import 'package:aba_app/pages/homepage/core/models.dart';

abstract class Islemler {
  late List<SlaytModel> slaytlar;
}

class IslemDetay implements Islemler {
  @override
  List<SlaytModel> slaytlar = [];
}
