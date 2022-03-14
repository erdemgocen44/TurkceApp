import 'package:aba_app/pages/homepage/core/functions_widget.dart';
import 'package:flutter/material.dart';

class InheriteWidget extends InheritedWidget {
  final Islemler islem;
  const InheriteWidget({Key? key, required Widget child, required this.islem})
      : super(key: key, child: child);

  static InheriteWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheriteWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
