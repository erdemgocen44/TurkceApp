import 'package:aba_app/core/widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Completer<GoogleMapController> _createrMaps = Completer();

  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
  Future _linkeGit(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      debugPrint("Linke ulaşılamıyor");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "İletişim",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.maxFinite,
            child: GoogleMap(
              mapType: MapType.normal,
              markers: Set<Marker>.of(_markers.values),
              initialCameraPosition: const CameraPosition(
                target: LatLng(39.9363429, 32.8232167),
                zoom: 13.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                final MarkerId markerId = MarkerId("center");
                final Marker marker = Marker(
                  markerId: markerId,
                  position: const LatLng(39.9363429, 32.8232167),
                  infoWindow: InfoWindow(
                    title: "Dersimiz Türkçe",
                    snippet: "Türkçeye dokun!",
                    onTap: () {
                      debugPrint("Marker tıklandı");
                    },
                  ),
                );

                _markers[markerId] = marker;
                _createrMaps.complete(controller);
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    FontAwesomeIcons.home,
                    size: 50,
                    color: Colors.pink,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: defaulttext(
                      yazi: "Atatürk Bulvarı No: 98 Bakanlıklar / ANKARA",
                      size: 16,
                      kalinlik: FontWeight.bold,
                      hiza: TextAlign.center,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      _linkeGit('tel:+903124132680');
                    },
                    child: const Icon(
                      FontAwesomeIcons.phone,
                      size: 50,
                      color: Colors.pink,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: defaulttext(
                      yazi: "Telefon: 0312 413 26 80",
                      size: 16,
                      kalinlik: FontWeight.bold,
                      hiza: TextAlign.center,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      _linkeGit('mailto:mgocen86@gmail.com');
                    },
                    child: const Icon(
                      FontAwesomeIcons.envelope,
                      size: 50,
                      color: Colors.pink,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: defaulttext(
                      yazi: "mgocen86@gmail.com",
                      size: 16,
                      kalinlik: FontWeight.bold,
                      hiza: TextAlign.center,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
