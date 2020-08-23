import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  static const String id = 'feed_screen';
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FeedScreen"),
      ),
      body: Center(),
    );
  }
}
