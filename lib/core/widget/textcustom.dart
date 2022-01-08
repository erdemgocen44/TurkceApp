import 'package:flutter/material.dart';

class defaulttext extends StatelessWidget {
  final String? yazi;
  final double? size;
  final FontWeight? kalinlik;
  final Color? renk;

  const defaulttext({
    Key? key,
    this.yazi,
    this.size,
    this.kalinlik,
    this.renk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      yazi!,
      style: TextStyle(color: renk, fontSize: size, fontWeight: kalinlik),
    );
  }
}
