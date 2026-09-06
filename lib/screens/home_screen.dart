import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islamy_app/tabs/quran_tab/quran_tab.dart';
import 'package:islamy_app/tabs/radio_tab/radio_tab.dart';
import 'package:islamy_app/tabs/sebha_tab/sebha_tab.dart';
import 'package:islamy_app/tabs/time_tab/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  static const List<Widget> tabs = [
   QuranTab(),
   HadethTab(),
   SebhaTab(),
   RadioTab(),
   TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          currentIndex=index;
          setState(() {});
        },
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        backgroundColor: AppColors.goldColor,
        unselectedItemColor: AppColors.blackColor,
        selectedItemColor: Colors.white,
        items:[
          _bottomNavigationBarItem(
            icon: Assets.images.vector,
            label: 'Quran',
          ),
           _bottomNavigationBarItem(
            icon: Assets.images.icHadeth,
            label: 'Hadeth',
          ),
           _bottomNavigationBarItem(
            icon: Assets.images.icSebha,
            label: 'Sebha',
          ),
           _bottomNavigationBarItem(
            icon: Assets.images.icRadio,
            label: 'Radio',
          ),
             _bottomNavigationBarItem(
            icon: Assets.images.icTime,
            label: 'Time',
          ),
          
        ],
      ),
    );
  }


  BottomNavigationBarItem _bottomNavigationBarItem({ required String icon, required String label}){
    return BottomNavigationBarItem(
            icon: SvgPicture.asset(icon,width: 26,height: 26,colorFilter: ColorFilter.mode(AppColors.blackColor, BlendMode.srcIn),),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
              decoration: BoxDecoration(color: AppColors.blackColor.withValues(alpha: 0.6),borderRadius: BorderRadius.circular(66)),
              child: SvgPicture.asset(icon,width: 20,height: 20,colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),
            ),
            label: label,
          );
  }
}