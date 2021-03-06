import 'dart:io';

import 'package:aba_app/core/common/futurecustom.dart';
import 'package:aba_app/core/widget/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

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
          icon: NeumorphicIcon(
            Icons.menu,
            size: 25,
          ),
          tooltip: "Yan Menüyü Aç",
        ),
        title: const Text(
          "Dersimiz Türkçe",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Share.share("""Dersimiz Türkçe Uygulamızı İndirdiniz mi? 
         Android: https://play.google.com/store/apps
         IOS: https://itunes.apple.com/us/app/id213898""");
            },
            icon: NeumorphicIcon(
              FontAwesomeIcons.share,
              size: 25,
            ),
            tooltip: "Paylaş",
          ),
          IconButton(
            onPressed: () {
              urlAc(Platform.isAndroid
                  ? "https://play.google.com/store/apps"
                  : "IOS: https://itunes.apple.com/us/app/id213898");
            },
            icon: NeumorphicIcon(
              FontAwesomeIcons.star,
              size: 25,
            ),
            tooltip: "Değerlendir",
          ),
        ],
      ),
      body: Container(),
      drawer: const YanMenu(),
    );
  }
}
