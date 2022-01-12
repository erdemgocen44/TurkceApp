import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListTileRota extends StatelessWidget {
  final Icon? ikon;
  final String? yazi;
  final String? site;
  final Color? renk;
  final FontWeight? kalinlik;
  final String? rota;

  const ListTileRota({
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
        Navigator.pushNamed(context, rota!);
      },
    );
  }
}
