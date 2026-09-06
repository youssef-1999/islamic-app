import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/sub_title.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  itemCount: 8,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.white,
                    indent: 60,
                    endIndent: 60,
                  ),
                  itemBuilder: (context, index) => SizedBox(
                    width: 290,
                    child: Card(
color: Colors.transparent,
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
                                      '${index + 1}',
                                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Al-Fatiha',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                    SubTitle(text: '7 Verses  '),
                                  ],
                                  
                                ),
                              ],
                            ),
                            Text('الفاتحة',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                        ],
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