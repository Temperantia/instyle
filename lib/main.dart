import 'package:closet/screens/chat_screen.dart';
import 'package:closet/screens/feed_screen.dart';
import 'package:closet/screens/login_screen.dart';
import 'package:closet/screens/management_screen.dart';
import 'package:closet/screens/profile_screen.dart';
import 'package:closet/screens/proposals_screen.dart';
import 'package:closet/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ChatScreen.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        ChatScreen.id: (context) => ChatScreen(),
        FeedScreen.id: (context) => FeedScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ManagementScreen.id: (context) => ManagementScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        ProposalsScreen.id: (context) => ProposalsScreen(),
        SignupScreen.id: (context) => SignupScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String id = 'main';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("main"),
      ),
      body: Center(),
    );
  }
}
