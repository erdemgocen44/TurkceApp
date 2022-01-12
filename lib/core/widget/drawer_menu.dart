import 'package:aba_app/core/common/consts.dart';
import 'package:aba_app/core/widget/divider_custom.dart';
import 'package:aba_app/core/widget/listtile_rota.dart';
import 'package:aba_app/core/widget/listtile_site.dart';
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
                  const ListTileRota(
                      ikon: Icon(
                        FontAwesomeIcons.bookReader,
                        size: 35,
                        color: Colors.pink,
                      ),
                      yazi: "Konular",
                      rota: "/konular"),
                  dividercustom(),
                  const ListTileRota(
                    ikon: Icon(
                      FontAwesomeIcons.hourglassHalf,
                      size: 35,
                      color: Colors.pink,
                    ),
                    yazi: "Testler",
                    renk: Colors.black,
                    kalinlik: FontWeight.bold,
                    rota: "/test",
                  ),
                  dividercustom(),
                  const ListTileRota(
                    ikon: Icon(
                      FontAwesomeIcons.pencilAlt,
                      size: 35,
                      color: Colors.pink,
                    ),
                    yazi: "Yazılı Soruları",
                    renk: Colors.black,
                    kalinlik: FontWeight.bold,
                  ),
                  dividercustom(),
                  ExpansionTile(
                    leading: const Icon(
                      FontAwesomeIcons.youtube,
                      size: 35,
                      color: Colors.pink,
                    ),
                    title: const Text(
                      "Video Dersler",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const ListTileSite(
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
                        child: const ListTileSite(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.pink,
                            ),
                            yazi: "6.Sınıf",
                            site: youtube6),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const ListTileSite(
                            ikon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.pink,
                            ),
                            yazi: "7.Sınıf",
                            site: youtube7),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const ListTileSite(
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
                  const ListTileSite(
                    ikon: Icon(
                      FontAwesomeIcons.userAlt,
                      color: Colors.pink,
                      size: 35,
                    ),
                    yazi: "Hakkımızda",
                    site: hakkimizda,
                  ),
                  const ListTileRota(
                    ikon: Icon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.pink,
                      size: 35,
                    ),
                    yazi: "İletişim",
                    rota: "/contact",
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
