import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/radio_tab/radio_view.dart';
import 'package:islamy_app/tabs/radio_tab/reciters_view.dart';
import 'package:islamy_app/widgets/buildBg.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          BuildBg(image: Assets.images.quranTabBg.path),
          SafeArea(
            child: Column(
              children: [
                Image.asset(Assets.images.islami.path,width: 200,height: 200,fit: BoxFit.cover,),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.blackColor.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      color: AppColors.goldColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelColor: AppColors.blackColor,
                    unselectedLabelColor: Colors.white,
                    tabs: const [
                      Tab(
                        child: SizedBox(
                          width: 120,
                          height: 40,
                          child: Center(child: Text('Radio')),
                        ),
                      ),
                      Tab(
                        child: SizedBox(
                          width: 120,
                          height: 40,
                          child: Center(child: Text('Reciters')),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      RadioView(),
                      RecitersView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
