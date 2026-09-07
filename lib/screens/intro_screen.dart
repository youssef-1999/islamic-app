import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_app/common/app_assets.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  PageViewModel _buildPage({
  required String image,
  required String title,
  String body = '',
}) {
  return PageViewModel(
    title: title,
    body: body,
    image: SizedBox(
      height: 570,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Image.asset(image, height: 450),
        ),
      ),
    ),
    decoration: const PageDecoration(
      pageColor: AppColors.blackColor,
      imagePadding: EdgeInsets.only(top: 24, bottom: 12),
      titleTextStyle: TextStyle(
        fontFamily: 'jannaLt',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.goldColor,
      ),
      bodyTextStyle: TextStyle(
        fontFamily: 'jannaLt',
        fontSize: 16,
        color: AppColors.goldColor,
      ),
      bodyPadding: EdgeInsets.symmetric(horizontal: 24),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: AppColors.blackColor,
        globalHeader: Align(
          alignment: Alignment.topCenter,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Image.asset(AppAssets.logo,width: 100,height: 100,fit: BoxFit.cover,),
            ),
          ),
        ),
        pages: [
          _buildPage(
            image: AppAssets.intro1,
            title: "Welcome To Islamy App",
            body:""
          ),
          _buildPage(
            image: AppAssets.intro2,
            title: "Welcome To Islami",
            body: "We Are Very Excited To Have You In Our Community",
          ),
          _buildPage(
            image: AppAssets.intro3,
            title: "Reading the Quran",
            body: "Read, and your Lord is the Most Generous",
          ),
          _buildPage(
            image: AppAssets.intro4,
            title: "Bearish",
            body: "Praise the name of your Lord, the Most High",
          ),
          _buildPage(
            image: AppAssets.intro5,
            title: "Holy Quran Radio",
            body: "You can listen to the Holy Quran Radio through the application for free and easily",
          ),
        ],
        next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.goldColor)),
        skip: const Text("Skip", style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.goldColor)),
        showBackButton: true,
             back: const Text("Back", style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.goldColor)),

        done: const Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.goldColor),
        ),
        dotsDecorator: const DotsDecorator(
          color: Colors.white24,
          activeColor: AppColors.goldColor,
          size: Size(8, 8),
          activeSize: Size(22, 8),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        onDone: () => _goToMain(context),
        onSkip: () => _goToMain(context),
      ),
    );
  }

  void _goToMain(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()), // your real home
    );
  }
}