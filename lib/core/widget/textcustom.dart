import 'package:flutter/material.dart';

class defaulttext extends StatelessWidget {
  final String? yazi;
  final double? size;
  final FontWeight? kalinlik;
  final Color? renk;
  final TextAlign? hiza;

  const defaulttext({
    Key? key,
    this.yazi,
    this.size,
    this.kalinlik,
    this.renk,
    this.hiza,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      yazi!,
      textAlign: hiza,
      style: TextStyle(
        color: renk,
        fontSize: size,
        fontWeight: kalinlik,
      ),
    );
  }
}
