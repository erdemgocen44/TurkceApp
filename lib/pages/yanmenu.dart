import 'package:aba_app/core/widget/listTileCustom.dart';
import 'package:aba_app/core/widget/textcustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      FontAwesomeIcons.bookReader,
                      size: 35,
                      color: Colors.pink,
                    ),
                    yazi: "Konular",
                    renk: Colors.black,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(
                      FontAwesomeIcons.hourglassHalf,
                      size: 35,
                      color: Colors.pink,
                    ),
                    yazi: "Testler",
                    renk: Colors.black,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(
                      FontAwesomeIcons.pencilAlt,
                      size: 35,
                      color: Colors.pink,
                    ),
                    yazi: "Sınav Soruları",
                    renk: Colors.black,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  ExpansionTile(
                    leading: const Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.pink,
                    ),
                    title: const defaulttext(
                      yazi: "Video Dersler",
                      size: 16,
                      kalinlik: FontWeight.bold,
                      renk: Colors.black,
                    ),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.pink,
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
                              color: Colors.pink,
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
                              color: Colors.pink,
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
                              color: Colors.pink,
                            ),
                            yazi: "8.Sınıf",
                            site:
                                "https://www.youtube.com/watch?v=Wx-r10ClJvM&list=PLpmkeV7WlemVU8eiySs09Vbg8AzQoJ17r"),
                      ),
                    ],
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(FontAwesomeIcons.userAlt, color: Colors.pink),
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
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.pink,
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
        height: 5,
        color: Color(0xFF9ec22a),
      ),
    );
  }
}
