import 'package:closet/screens/chat_screen.dart';
import 'package:closet/screens/login_screen.dart';
import 'package:closet/screens/management_screen.dart';
import 'package:closet/screens/profile_screen.dart';
import 'package:closet/screens/proposals_screen.dart';
import 'package:closet/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: FirebaseAuth.instance.currentUser == null ? SignupScreen.id : ProfileScreen.id,
      routes: {
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ManagementScreen.id: (context) => ManagementScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        ProposalsScreen.id: (context) => ProposalsScreen(),
        SignupScreen.id: (context) => SignupScreen(),
      },
    );
  }
}
