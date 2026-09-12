import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/models/hadeth_model.dart';
import 'package:islamy_app/widgets/buildBg.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
 final  List <HadethModel> hadethList = [];
 bool isLoading = true;
  Widget build(BuildContext context) {
    // cross aligment must be stack woth fit expand
    if (hadethList.isEmpty) loadHadethContent();
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
      if(isLoading)CircularProgressIndicator()
      else 
      Expanded(child: LayoutBuilder(builder: (context, constraints) =>
      CarouselSlider.builder(
        options: CarouselOptions(
          autoPlay: true,
          height: constraints.maxHeight,
          enlargeCenterPage: true
        ),
        itemCount: hadethList.length,
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
                         Text(hadethList[index].hadethName ?? ""
                         ,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        Text(hadethList[index].hadethContent?.join("\n") ?? ""
                        ,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
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
 
  Future <void> loadHadethContent() async {
   for (int i = 1; i <= 50; i++) {
     String hadeth=await rootBundle.loadString("assets/hadeeth/h$i.txt");
    hadeth= hadeth.trim();
    List <String> hadethSplit = hadeth.split("\n");
   hadethList.add(HadethModel(hadethName: hadethSplit[0], hadethContent: hadethSplit.sublist(1)));
setState(() {
  isLoading = false;
});
   }
  }
}