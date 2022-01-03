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
          titleTextStyle: const TextStyle(
              color: Colors.white,
              fontFamily: "PatrickHand-Regular",
              fontSize: 15,
              fontWeight: FontWeight.w500),
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
