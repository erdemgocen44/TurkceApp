import 'package:aba_app/core/common/consts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String _htmlData = "";
  @override
  void initState() {
    super.initState();
    _istek();
  }

  Future _istek() async {
    _htmlData = "";
    setState(() {});
    await http.get(Uri.parse(testLink)).then((gelenVeri) {
      _htmlData = gelenVeri.body;
      debugPrint(_htmlData);
      setState(() {});
    });
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
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(
        child: _htmlData.isNotEmpty
            ? SingleChildScrollView(
                child: Text(_htmlData),
              )
            : const CircularProgressIndicator(
                color: Colors.pink,
              ),
      ),
    );
  }
}
