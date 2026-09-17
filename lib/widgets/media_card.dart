import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class MediaCard extends StatelessWidget {
  final String title;
  final String bgImage;
  final IconData firstIcon;
  final IconData secondIcon;

  const MediaCard({
    required this.title,
    required this.bgImage,
    required this.firstIcon,
    required this.secondIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              bgImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: AppColors.goldColor.withValues(alpha: .35),
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      firstIcon,
                      size: 40,
                      color: AppColors.blackColor,
                      fontWeight: const FontWeight(800),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      secondIcon,
                      size: 30,
                      color: AppColors.blackColor,
                      fontWeight: const FontWeight(500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
