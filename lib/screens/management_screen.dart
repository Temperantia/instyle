import 'package:flutter/material.dart';

class ManagementScreen extends StatefulWidget {
  static const String id = 'management_screen';
  @override
  _ManagementScreenState createState() => _ManagementScreenState();
}

class _ManagementScreenState extends State<ManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ManagementScreen"),
      ),
      body: Center(),
    );
  }
}
