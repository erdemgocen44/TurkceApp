import 'package:flutter/material.dart';

import 'anasayfa.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink[600],
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
              fontFamily: "PatrickHand-Regular",
              fontSize: 20, //bunu headline olarak yapmam lazım!
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
};
