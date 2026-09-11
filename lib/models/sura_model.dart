import 'package:islamy_app/data/suras_names.dart';

class SuraModel {
 final String suraNameEn;
 final String suraNameAr;
 final int ayasCount;
 final  String id;
  SuraModel({required this.suraNameEn,required this.suraNameAr,required this.ayasCount,required this.id});

  static List<SuraModel> get allSuras {
    List<SuraModel> surasList = [];
    for (int i = 0; i < surasList.length; i++) {
      surasList.add(SuraModel(
          suraNameEn: SurasList.suras[i].suraNameEn,
          suraNameAr: SurasList.suras[i].suraNameAr,
          ayasCount: SurasList.suras[i].ayasCount,
          id: (i+1).toString()));
    }
    return surasList;
  }
}