import 'package:aba_app/pages/contact.dart';
import 'package:aba_app/pages/konular.dart';
import 'package:aba_app/pages/tests.dart';
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
        textTheme: const TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
          headline6: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 15.0,
                color: Colors.black,
              ),
            ],
          ),
          bodyText1: TextStyle(
            fontSize: 14,
          ),
        ),
        primaryColor: const Color(0xFF9ec22a),
        fontFamily: "Comfortaa",
        appBarTheme: AppBarTheme(
          centerTitle: true,
          shadowColor: Colors.grey,
          elevation: 20,
          backgroundColor: Colors.pink[600],
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
              letterSpacing: 2,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 15.0,
                  color: Colors.black,
                ),
              ],
              fontFamily: "PatrickHand-Regular",
              fontSize: 25, //bunu headline olarak yapmam lazım!
              fontWeight: FontWeight.bold),
        ),
      ),
      home: const AnaSayfa(),
      routes: rotalar,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => const AnaSayfa(),
  "/contact": (BuildContext context) => ContactPage(),
  "/konular": (BuildContext context) => const KonularPage(),
  "/test": (BuildContext context) => const TestPage(),
};
