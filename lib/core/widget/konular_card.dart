import 'package:flutter/material.dart';

class KonularCard extends StatelessWidget {
  final String konular;
  const KonularCard({Key? key, required this.konular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Color(0xFF9ec22a),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(1, 20, 1, 1),
        child: Center(
          child: Text(
            konular,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
