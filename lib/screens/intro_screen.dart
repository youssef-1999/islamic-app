import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/models/intro_model.dart';
import 'package:islamy_app/screens/home_screen.dart';
import 'package:islamy_app/widgets/intro_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<IntroModel> _introItems = [
    IntroModel(
      image: Assets.images.intro1.path,
      title: 'Welcome to Islami App',
      subtitle: '',
    ),
    IntroModel(
      image: Assets.images.intro2.path,
      title: 'Welcome to Islam ',
      subtitle: 'We Are Very Excited To Have You In Our Community',
    ),
    IntroModel(
      image: Assets.images.intro3.path,
      title: 'Reading the Quran',
      subtitle: 'Read , and your Lord is the Most Generous',
    ),
    IntroModel(
      image: Assets.images.intro4.path,
      title: 'Bearish',
      subtitle: 'Praise the name of your Lord , the Most High',
    ),
    IntroModel(
      image: Assets.images.intro5.path,
      title: 'Holy Quran Radio',
      subtitle: 'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPreviousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToNextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _finishIntro() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Image.asset(
                Assets.images.islami.path,
                fit: BoxFit.contain,
                height: size.height * 0.15,
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _introItems.length,
                  onPageChanged: (index) => setState(() => _currentIndex = index),
                  itemBuilder: (context, index) => IntroItem(
                    image: _introItems[index].image,
                    title: _introItems[index].title,
                    subtitle: _introItems[index].subtitle,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: _currentIndex,
                    count: _introItems.length,
                    onDotClicked: (index) => _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.goldColor,
                      dotWidth: 7,
                      dotHeight: 10,
                      spacing: 5,
                      dotColor: AppColors.goldColor.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(child: 
                  TextButton(
                    onPressed: _currentIndex == 0 ? null : _goToPreviousPage,
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        color: _currentIndex == 0
                            ? AppColors.goldColor.withValues(alpha: 0.5)
                            : AppColors.goldColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), visible: _currentIndex != 0,),
                 
                  TextButton(
                    onPressed: _currentIndex == _introItems.length - 1
                        ? _finishIntro
                        : _goToNextPage,
                    child: Text(
                      _currentIndex == _introItems.length - 1
                          ? 'Finish'
                          : 'Next',
                      style: const TextStyle(
                        color: AppColors.goldColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
