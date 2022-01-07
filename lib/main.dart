import 'package:aba_app/pages/contact.dart';
import 'package:flutter/material.dart';

import 'pages/anasayfa.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Comfortaa",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink[600],
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
              fontFamily: "PatrickHand-Regular",
              fontSize: 22, //bunu headline olarak yapmam lazım!
              fontWeight: FontWeight.bold),
        ),
      ),
      home: AnaSayfa(),
      routes: rotalar,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => AnaSayfa(),
  "/contact": (BuildContext context) => ContactPage(),
};
