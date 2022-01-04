import 'package:flutter/material.dart';

ListTile CustomListTile(BuildContext context, Icon ikon, String yazi,
    FontWeight kalinlik, double size, Color renk) {
  return ListTile(
    leading: ikon,
    title: Text(
      yazi,
      style: TextStyle(fontWeight: kalinlik, fontSize: size, color: renk),
    ),
    onTap: () {
      Navigator.pop(context);
    },
  );
}
