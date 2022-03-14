import 'package:flutter/material.dart';

class InheriteWidget extends InheritedWidget {
  final String baslik = "Bu bir inherit başlıktır";
  final String sonradanOlusan;
  InheriteWidget({
    Key? key,
    required Widget child,
    required this.sonradanOlusan,
  }) : super(key: key, child: child);

  static InheriteWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheriteWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
