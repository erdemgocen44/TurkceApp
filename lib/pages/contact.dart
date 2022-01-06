import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class ContactPage extends StatefulWidget {
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Completer<GoogleMapController> _createrMaps = Completer();

  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İLETİŞİM"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                  position: LatLng(39.9363429, 32.8232167),
                  infoWindow: InfoWindow(
                    title: "Dersimiz Türkçe",
                    snippet: "Türkçeye dokun!",
                    onTap: () {
                      debugPrint("Marker tıklandı");
                    },
                  ),
                );
                setState(() {
                  _markers[markerId] = marker;
                  _createrMaps.complete(controller);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
