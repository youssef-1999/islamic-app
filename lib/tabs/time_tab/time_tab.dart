import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/azkar_card.dart';
import 'package:islamy_app/widgets/buildBg.dart';
import 'package:islamy_app/widgets/pray_time_carousel.dart';

class TimeTab extends StatefulWidget {
  const TimeTab({super.key});

  @override
  State<TimeTab> createState() => _TimeTabState();
}

class _TimeTabState extends State<TimeTab> {
  @override

  Widget build(BuildContext context) {
    return  Stack(
        fit: StackFit.expand,
        children: [
          BuildBg(image: Assets.images.quranTabBg.path),
          SafeArea(
            child: Column(
              children: [
                Image.asset(Assets.images.islami.path,width: 200,height: 200,fit: BoxFit.cover,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(
                     image: AssetImage(Assets.images.bgPrayerTime.path),
                     fit: BoxFit.cover,
                     
                   )
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('16 Jul,',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('2024',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(height: 35,),
                            ],
                          ),
                          Column(
                             children: [
                              Text('Pray Time,',style: TextStyle(color: AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('Tuesday',style: TextStyle(color: AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                              children: [
                              Text('09 Muh,',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('1446',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(height: 35,),

                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const PrayTimeCarousel(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Center(child: Text('Next Pray -02:32 ',style: TextStyle(color: AppColors.blackColor,fontSize: 18,fontWeight: FontWeight.bold),)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.notifications_off_rounded,color: AppColors.blackColor,size: 20,fontWeight: FontWeight.bold,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Azkar',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: AzkarCard(imageTitle: Assets.images.eveningAzkar.path, title: 'Evening Azkar'),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: AzkarCard(imageTitle: Assets.images.morningAzkar.path, title: 'Morning Azkar'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}