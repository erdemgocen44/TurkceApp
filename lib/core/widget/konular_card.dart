import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class KonularCard extends StatelessWidget {
  final String konular;
  const KonularCard({Key? key, required this.konular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 8,
            lightSource: LightSource.top,
            color: Colors.white),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          margin: const EdgeInsets.fromLTRB(1, 20, 1, 1),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                konular,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
