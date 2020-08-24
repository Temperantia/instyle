import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  static const String id = 'info_screen';
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InfoScreen"),
      ),
      body: Center(),
    );
  }
}
