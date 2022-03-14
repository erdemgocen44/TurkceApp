import 'package:aba_app/pages/homepage/core/models.dart';
import 'package:http/http.dart' as http;

abstract class Islemler {
  late List<SlaytModel> slaytlar;
  Future<bool> istek();
  late String veriler;
}

class IslemDetay implements Islemler {
  @override
  List<SlaytModel> slaytlar = [];

  @override
  Future<bool> istek() async {
    await http.get(Uri.parse("https://abilar.org/")).then((gelenVeri) {
      veriler = gelenVeri.body
          .replaceAll("\n", "")
          .replaceAll("\t", "")
          .replaceAll("  ", "");

      print(veriler);
    });
    return true;
  }

  @override
  late String veriler;
}
