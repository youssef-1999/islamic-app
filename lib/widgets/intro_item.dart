import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class IntroItem extends StatelessWidget {
  final String image;
  final String title;
  final String? subtitle;
  const IntroItem({required this.image, required this.title, this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          child: Image.asset(
            image,
            fit: BoxFit.contain,
            height: size.height * 0.15,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,

              
            ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
