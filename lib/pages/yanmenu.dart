import 'package:aba_app/core/consts.dart';
import 'package:aba_app/core/widget/dividerCustom.dart';
import 'package:aba_app/core/widget/listTileCustom.dart';
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
                    rota: "/konular",
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
                    title: Text(
                      "Video Dersler",
                      style: Theme.of(context).textTheme.headline5,
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
                          site: youtube5,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.pink,
                            ),
                            yazi: "6.Sınıf",
                            site: youtube6),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.pink,
                            ),
                            yazi: "7.Sınıf",
                            site: youtube7),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const CustomListTile(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.pink,
                            ),
                            yazi: "8.Sınıf",
                            site: youtube8),
                      ),
                    ],
                  ),
                  dividercustom(),
                  const CustomListTile(
                    ikon: Icon(FontAwesomeIcons.userAlt, color: Colors.pink),
                    yazi: "HAKKIMIZDA",
                    site: hakkimizda,
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
                    title: Text(
                      "İLETİŞİM",
                      style: Theme.of(context).textTheme.headline5,
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
}
