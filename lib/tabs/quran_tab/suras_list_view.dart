import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/models/sura_model.dart';
import 'package:islamy_app/tabs/quran_tab/sura_screen_details.dart';
import 'package:islamy_app/widgets/sub_title.dart';

class SurasListView extends StatelessWidget {
  final List<SuraModel> suras;
  const SurasListView({super.key, required this.suras, required this.searchText, required this.addToMostRecent});
  final String searchText;
  final void Function(int index) addToMostRecent;

  @override
  Widget build(BuildContext context) {
    final query = searchText.toLowerCase();
    List <SuraModel> suras = this.suras.where((sura) =>
        sura.suraNameAr.toLowerCase().contains(query) ||
        sura.suraNameEn.toLowerCase().contains(query)).toList();
    return Column(
children: [
  Padding(padding:
              const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text('Suras List',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,

                  physics: const BouncingScrollPhysics(),
                  itemCount: suras.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.white,
                    indent: 60,
                    endIndent: 60,
                  ),
                  itemBuilder: (context, index) => SizedBox(
                    width: 290,
                    child: Card(

color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          addToMostRecent(index);
                          Navigator.pushNamed(context, SuraScreenDetails.routeName,arguments: suras[index]);
                        },
                        child: Padding(

                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(Assets.images.suraNumber,width: 52,height: 52,fit: BoxFit.cover,),
                                    Text(
                                      suras[index].id.toString(),
                                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(suras[index].suraNameEn,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                    SubTitle(text: "${suras[index].ayasCount} verses"),
                                  ],

                                ),
                              ],
                            ),
                            Text(suras[index].suraNameAr,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                        ],
                      ),
),
                      ),
                    ),
                  ),
                ),
              ),
],
    );
  }
}