import 'package:aba_app/core/widget/iconbutton.dart';
import 'package:aba_app/pages/yanmenu.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _scaffold.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
          tooltip: "Yan Menüyü Aç",
        ),
        title: const Text(
          "DERSİMİZ TÜRKÇE",
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: [
          iconbuttoncustom("Puan Ver", const Icon(Icons.star)),
          iconbuttoncustom("Paylaş", const Icon(Icons.share)),
        ],
      ),
      body: Container(),
      drawer: YanMenu(),
    );
  }
}
