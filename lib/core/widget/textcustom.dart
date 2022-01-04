import 'package:flutter/material.dart';

Text defaulttext(String baslik, double size, FontWeight kalinlik, Color renk) {
  return Text(
    baslik,
    style: TextStyle(
      color: renk,
      fontSize: size,
      fontWeight: kalinlik,
    ),
  );
}
