import 'package:aba_app/core/konular/sinif_5.dart';
import 'package:aba_app/core/widget/konular_card.dart';
import 'package:flutter/material.dart';

class KonularPage extends StatelessWidget {
  const KonularPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konular"),
      ),
      body: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: konular.length,
        itemBuilder: (BuildContext context, int position) {
          return KonularCard(konular: konular[position]);
        },
      ),
    );
  }
}
