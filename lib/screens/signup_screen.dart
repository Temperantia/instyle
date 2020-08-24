import 'package:closet/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'info_screen.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void registerUser() async {
    print('print: ' + _emailController.text);
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);

      if (userCredential.user == null) {
        print('print: registration failed');
      } else {
        Navigator.pushReplacementNamed(context, InfoScreen.id);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('print: The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('print: The account already exists for that email.');
      }
    } catch (e) {
      print('print: ' + e.toString());
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignupScreen"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("LOGO"),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _emailController,
                autocorrect: false,
                decoration: InputDecoration(labelText: 'Enter your email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _passwordController,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
            ),
            MaterialButton(
              child: Text("Register"),
              color: Colors.grey,
              onPressed: () {
                registerUser();
                // TODO: Implement TextFormField validation
              },
            ),
            MaterialButton(
              child: Text("Already have an account? Log in!"),
              color: Colors.grey,
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
