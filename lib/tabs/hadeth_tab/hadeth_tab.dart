import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/buildBg.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    // cross aligment must be stack woth fit expand
    return Stack(
      fit: StackFit.expand,
      children: [
BuildBg(image: Assets.images.quranTabBg.path),
SafeArea(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(Assets.images.islami.path,width: 100,height: 100,fit: BoxFit.cover,),
      SizedBox(height: 50,),
      Expanded(child: LayoutBuilder(builder: (context, constraints) =>
      CarouselSlider.builder(
        options: CarouselOptions(
          autoPlay: true,
          height: constraints.maxHeight,
          enlargeCenterPage: true
        ),
        itemCount: 4,
        itemBuilder: (context, index, realIndex) =>
        Card(
            
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColors.goldColor,
            child: Padding(
              padding: const EdgeInsets.only(top:10),
              child: Stack(
                children: [
                  Image.asset(Assets.images.bgHadeth.path,fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top:40),
                      child: Column(
                      children: [
                         Text('Content',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("""
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitl
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitler
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitl
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle
TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitl
""",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                         ],
                      ),
                    ),
                  )
              ],
              ),
            )
          ) ,
      ),)),
      
    
      SizedBox(height: 20)
    ],
  ),
),
      ],
    );
    
  }
}