import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/quran_tab/most_recently_view.dart';
import 'package:islamy_app/tabs/quran_tab/suras_list_view.dart';
import 'package:islamy_app/widgets/buildBg.dart';
import 'package:islamy_app/widgets/sub_title.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        BuildBg(image: Assets.images.quranTabBg.path),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
            children: [
              Image.asset(Assets.images.islami.path,width: 200,height: 200,fit: BoxFit.cover,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Here',
                  hintStyle: const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                  fillColor: AppColors.blackColor.withValues(alpha: 0.7),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.goldColor,width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.goldColor,width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.goldColor,width: 2),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      Assets.images.vector,
                      colorFilter: ColorFilter.mode(AppColors.goldColor, BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MostRecentlyView(),
               SizedBox(height: 20,),
              SurasListView(),
            ],
          ),
          ),
        ),
      ],
    );
  }

  
}