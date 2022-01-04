import 'package:flutter/material.dart';

ListTile CustomListTile(BuildContext context, Icon ikon, String yazi,
        FontWeight kalinlik, Color renk) =>
    ListTile(
      leading: ikon,
      title: Text(
        yazi,
        style: TextStyle(fontWeight: kalinlik, fontSize: 16, color: renk),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
