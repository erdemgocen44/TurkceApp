import 'package:aba_app/core/common/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String _htmlData = "";
  /*  @override
  void initState() {
    super.initState();
    _istek();
  } */

  Future _istek() async {
    _htmlData = "";
    setState(() {});
    await http.get(Uri.parse(testLink)).then((gelenVeri) {
      _htmlData = gelenVeri.body
          .replaceAll("\n", "")
          .replaceAll("\t", "")
          .replaceAll("  ", "");

      RegExp arama = new RegExp(
          '<div id="site-column site-column-content">(.*?)<!-- .site-column-wrapper .clearfix --></div>');
      Match eslesen = arama.firstMatch(_htmlData) as Match;

      _htmlData = eslesen.group(1)!;
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Html(data: _htmlData),
                ),
              )
            : const CircularProgressIndicator(
                color: Colors.pink,
              ),
      ),
    );
  }
}
