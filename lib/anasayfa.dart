import 'package:aba_app/core/widget/iconbutton.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}
