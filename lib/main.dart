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
          titleTextStyle: const TextStyle(fontFamily: "PatrickHand-Regular"),
          color: Colors.pink[600],
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
