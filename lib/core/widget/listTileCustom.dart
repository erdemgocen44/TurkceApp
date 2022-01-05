import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

ListTile CustomListTile(BuildContext context, Icon ikon, String yazi,
        [String? site, Color? renk, FontWeight? kalinlik]) =>
    ListTile(
      leading: ikon,
      title: Text(
        yazi,
        style: TextStyle(fontWeight: kalinlik, fontSize: 16, color: renk),
      ),
      onTap: () {
        Navigator.pop(context);
        _urlAc("${site}");
      },
    );
Future _urlAc(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint("Linke ulaşılamıyor");
  }
}
