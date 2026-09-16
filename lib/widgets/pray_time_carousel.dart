import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class PrayTimeCarousel extends StatefulWidget {
  const PrayTimeCarousel({super.key});
  @override
  State<PrayTimeCarousel> createState() => _PrayTimeCarouselState();
}

class _PrayTimeCarouselState extends State<PrayTimeCarousel> {
  late final PageController _controller =
      PageController(viewportFraction: 0.28, initialPage: 2);

  final prayers = const [
    ('Fajr', '04:04', 'AM'),
    ('Dhuhr', '01:01', 'PM'),
    ('Asr', '04:38', 'PM'),
    ('Maghrib', '07:57', 'PM'),
    ('Isha', '09:15', 'PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: PageView.builder(
        controller: _controller,
        itemCount: prayers.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double page = _controller.hasClients
                  ? (_controller.page ?? _controller.initialPage.toDouble())
                  : _controller.initialPage.toDouble();
              double distance = (page - index).abs().clamp(0.0, 1.0);
              double scale = 1 - (distance * 0.25); // shrink as it leaves center
              bool active = distance < 0.5;

              return Transform.scale(
                scale: scale,
                child: _PrayerCell(
                  name: prayers[index].$1,
                  time: prayers[index].$2,
                  period: prayers[index].$3,
                  active: active,
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _PrayerCell extends StatelessWidget {
  final String name;
  final String time;
  final String period;
  final bool active;

  const _PrayerCell({
    required this.name,
    required this.time,
    required this.period,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        gradient: active
            ? const LinearGradient(
                colors: [Color(0xFFB19768), Colors.white],
                stops: [0.0, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        color: active ? null : AppColors.goldColor.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              color:  Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            time,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            period,
            style: TextStyle(
              color:  Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
