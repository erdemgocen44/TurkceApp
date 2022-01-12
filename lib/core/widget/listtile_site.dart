import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListTileSite extends StatelessWidget {
  final Icon? ikon;
  final String? yazi;
  final String? site;
  final Color? renk;
  final FontWeight? kalinlik;
  final Navigator? rota;

  const ListTileSite({
    Key? key,
    this.ikon,
    this.yazi,
    this.site,
    this.renk,
    this.kalinlik,
    this.rota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ikon,
      title: Text(
        yazi!,
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: renk),
      ),
      onTap: () {
        Navigator.pop(context);
        _urlAc("${site}");
        rota;
      },
    );
  }

  Future _urlAc(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      debugPrint("Linke ulaşılamıyor");
    }
  }
}
