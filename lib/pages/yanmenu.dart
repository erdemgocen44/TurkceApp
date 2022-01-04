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
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.adb_sharp,
                        size: 35,
                        color: Color(0xFF9ec22a),
                      ),
                      "Ortaokul 5",
                      FontWeight.bold,
                      Colors.pink),
                  dividercustom(),
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.face_sharp,
                        size: 35,
                        color: Color(0xFF9ec22a),
                      ),
                      "Ortaokul 6",
                      FontWeight.bold,
                      Colors.pink),
                  dividercustom(),
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.mode_edit_sharp,
                        size: 35,
                        color: Color(0xFF9ec22a),
                      ),
                      "Ortaokul 7",
                      FontWeight.bold,
                      Colors.pink),
                  dividercustom(),
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.light_sharp,
                        size: 35,
                        color: Color(0xFF9ec22a),
                      ),
                      "Ortaokul 8",
                      FontWeight.bold,
                      Colors.pink),
                  dividercustom(),
                  ExpansionTile(
                    leading: const Icon(
                      Icons.phone_android,
                      color: Colors.blueAccent,
                    ),
                    title: defaulttext(
                        "Video Dersler", 20, FontWeight.bold, Colors.black),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomListTile(
                            context,
                            const Icon(
                              Icons.supervised_user_circle,
                              color: Colors.orangeAccent,
                            ),
                            "5.Sınıf",
                            FontWeight.w500,
                            Colors.blueGrey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomListTile(
                            context,
                            const Icon(
                              Icons.supervised_user_circle,
                              color: Colors.orangeAccent,
                            ),
                            "6.Sınıf",
                            FontWeight.w500,
                            Colors.greenAccent),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomListTile(
                            context,
                            const Icon(
                              Icons.supervised_user_circle,
                              color: Colors.lightBlueAccent,
                            ),
                            "7.Sınıf",
                            FontWeight.w500,
                            Colors.blueGrey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomListTile(
                            context,
                            const Icon(
                              Icons.supervised_user_circle,
                              color: Colors.lightGreenAccent,
                            ),
                            "8.Sınıf",
                            FontWeight.w500,
                            Colors.blueGrey),
                      ),
                    ],
                  ),
                  dividercustom(),
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.family_restroom_sharp,
                        color: Colors.lightGreenAccent,
                      ),
                      "HAKKIMIZDA",
                      FontWeight.w500,
                      Colors.blueGrey),
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.contact_phone,
                        color: Colors.lightGreenAccent,
                      ),
                      "İLETİŞİM",
                      FontWeight.w500,
                      Colors.blueGrey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding dividercustom() {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Divider(
        height: 2,
        color: Colors.blueGrey,
      ),
    );
  }
}
