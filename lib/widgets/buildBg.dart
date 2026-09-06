import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class BuildBg extends StatelessWidget {
  final String image;
  const BuildBg({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.blackColor.withValues(alpha: 0.7),
                AppColors.blackColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}