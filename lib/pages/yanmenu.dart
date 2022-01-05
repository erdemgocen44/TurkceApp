import 'package:aba_app/core/widget/listTileCustom.dart';
import 'package:aba_app/core/widget/textcustom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    "",
                    Colors.pink,
                    FontWeight.bold,
                  ),
                  dividercustom(),
                  CustomListTile(
                    context,
                    const Icon(
                      Icons.face_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    "Ortaokul 6",
                    "",
                    Colors.pink,
                    FontWeight.bold,
                  ),
                  dividercustom(),
                  CustomListTile(
                    context,
                    const Icon(
                      Icons.mode_edit_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    "Ortaokul 7",
                    "",
                    Colors.pink,
                    FontWeight.bold,
                  ),
                  dividercustom(),
                  CustomListTile(
                    context,
                    const Icon(
                      Icons.light_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    "Ortaokul 8",
                    "",
                    Colors.pink,
                    FontWeight.bold,
                  ),
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
                            "https://www.youtube.com/watch?v=IY4PQG2M7yY&list=PLpmkeV7WlemU4cfKtVycpU-KsLSJBix09"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomListTile(
                            context,
                            const Icon(
                              Icons.supervised_user_circle,
                              color: Colors.deepPurpleAccent,
                            ),
                            "6.Sınıf",
                            "https://www.youtube.com/watch?v=OZIMUYkGzWE&list=PLpmkeV7WlemVzNlzZNR12uxyyqaX1-5Kx"),
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
                            "https://www.youtube.com/watch?v=0_z7oNpumiQ&list=PLpmkeV7WlemWXkg_x5WkjU_TQHSz36c7_"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: CustomListTile(
                            context,
                            const Icon(
                              Icons.supervised_user_circle,
                              color: Colors.blueAccent,
                            ),
                            "8.Sınıf",
                            "https://www.youtube.com/watch?v=Wx-r10ClJvM&list=PLpmkeV7WlemVU8eiySs09Vbg8AzQoJ17r"),
                      ),
                    ],
                  ),
                  dividercustom(),
                  CustomListTile(
                      context,
                      const Icon(
                        Icons.family_restroom_sharp,
                        color: Colors.purpleAccent,
                      ),
                      "HAKKIMIZDA",
                      "https://www.youtube.com/channel/UCdnRx--y-mEp-wkTO-aRs2g/about"),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/contact");
                    },
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.brown,
                    ),
                    title: const Text(
                      "İLETİŞİM",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
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
