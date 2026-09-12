import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/data/suras_names.dart';
import 'package:islamy_app/models/sura_model.dart';

class MostRecentlyView extends StatelessWidget {
  final List<int> mostRecent;
  const MostRecentlyView({super.key, this.mostRecent = const []});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                'Most Recently',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: mostRecent.length,
            itemBuilder: (context, index) {
              int suraId = mostRecent[index];
              SuraModel sura = SurasList.suras[suraId];
              return SizedBox(
                
              width: 290,
              child: Card(
                color: AppColors.goldColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            sura.suraNameEn,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            sura.suraNameAr,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            sura.ayasCount.toString(),
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        Assets.images.quranSura.path,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            );
            },
          ),
        ),
      ],
    );
  }
}
