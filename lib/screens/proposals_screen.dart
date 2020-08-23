import 'package:flutter/material.dart';

class ProposalsScreen extends StatefulWidget {
  static const String id = 'proposals_screen';
  @override
  _ProposalsScreenState createState() => _ProposalsScreenState();
}

class _ProposalsScreenState extends State<ProposalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProposalsScreen"),
      ),
      body: Center(),
    );
  }
}
