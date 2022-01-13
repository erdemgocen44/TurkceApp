import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String _htmlData = " ";
  Future _istek() async {
    await http
        .get(Uri.parse(
            'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjlg7-J26z1AhWrgv0HHeWYAlEQ3e4CegQIBBAB&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dsm5amZjPUWA&usg=AOvVaw0Ln-oJfOhp_IVe7nF6fj_k'))
        .then((gelenVeri) => _htmlData = gelenVeri.body);
  }

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
