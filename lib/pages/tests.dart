import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final String _htmlData = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Testler",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Text(_htmlData),
        ),
      ),
    );
  }
}
