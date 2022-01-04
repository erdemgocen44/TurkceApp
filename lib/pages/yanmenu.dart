import 'package:aba_app/core/widget/listTileCustom.dart';
import 'package:aba_app/core/widget/textcustom.dart';
import 'package:flutter/material.dart';

class YanMenu extends StatelessWidget {
  const YanMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/flower.png",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CustomListTile(
                      context,
                      Icon(
                        Icons.adb_sharp,
                        color: Color(0xed923456),
                      ),
                      "Ortaokul 5",
                      FontWeight.bold,
                      20,
                      Colors.pink),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
