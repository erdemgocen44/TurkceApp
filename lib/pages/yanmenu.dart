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
                  const CustomListTile(
                    ikon: Icon(
                      Icons.adb_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    yazi: "Ortaokul 5",
                    renk: Colors.pink,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(
                      Icons.face_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    yazi: "Ortaokul 6",
                    renk: Colors.pink,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(
                      Icons.mode_edit_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    yazi: "Ortaokul 7",
                    renk: Colors.pink,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(
                      Icons.light_sharp,
                      size: 35,
                      color: Color(0xFF9ec22a),
                    ),
                    yazi: "Ortaokul 8",
                    renk: Colors.pink,
                    kalinlik: FontWeight.bold,
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
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.orangeAccent,
                            ),
                            yazi: "5.Sınıf",
                            site:
                                "https://www.youtube.com/watch?v=IY4PQG2M7yY&list=PLpmkeV7WlemU4cfKtVycpU-KsLSJBix09"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.deepPurpleAccent,
                            ),
                            yazi: "6.Sınıf",
                            site:
                                "https://www.youtube.com/watch?v=OZIMUYkGzWE&list=PLpmkeV7WlemVzNlzZNR12uxyyqaX1-5Kx"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.lightBlueAccent,
                            ),
                            yazi: "7.Sınıf",
                            site:
                                "https://www.youtube.com/watch?v=0_z7oNpumiQ&list=PLpmkeV7WlemWXkg_x5WkjU_TQHSz36c7_"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.blueAccent,
                            ),
                            yazi: "8.Sınıf",
                            site:
                                "https://www.youtube.com/watch?v=Wx-r10ClJvM&list=PLpmkeV7WlemVU8eiySs09Vbg8AzQoJ17r"),
                      ),
                    ],
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon:
                        Icon(Icons.family_restroom, color: Colors.purpleAccent),
                    yazi: "HAKKIMIZDA",
                    site:
                        "https://www.youtube.com/channel/UCdnRx--y-mEp-wkTO-aRs2g/about",
                  ),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
