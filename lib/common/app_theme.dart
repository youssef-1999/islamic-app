import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class AppTheme {
  static  ThemeData appTheme=ThemeData(
    //AppBar background → BLACK
// AppBar content    → GOLD
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackColor,
      foregroundColor: AppColors.goldColor,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontFamily: 'jannaLt',
        color: AppColors.goldColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blackColor)
    
  );
}