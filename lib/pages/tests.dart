import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String _htmlData = " ";
  String link = "https://www.youtube.com/watch?v=sm5amZjPUWA";
  Future _istek() async {
    await http
        .get(Uri.parse(link))
        .then((gelenVeri) => _htmlData = gelenVeri.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Testler",
        ),
        actions: [
          IconButton(
            onPressed: _istek,
            icon: Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(
        child: _htmlData.length > 0
            ? SingleChildScrollView(
                child: Text(_htmlData),
              )
            : CircularProgressIndicator(
                color: Colors.pink,
              ),
      ),
    );
  }
}
