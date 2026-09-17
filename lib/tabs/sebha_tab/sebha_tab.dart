import 'package:flutter/material.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/buildBg.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int sebhaIndex = 0;
  int totalTaps = 0;
  List<String> sebha = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        BuildBg(image: Assets.images.sebhaBg.path),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.islami.path,
                width: 200,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 50),
              Text(
                'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    totalTaps++;
                    counter++;
                    if (counter > 10) {
                      counter = 1;
                      sebhaIndex = (sebhaIndex + 1) % sebha.length;
                    }
                  });
                },
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedRotation(
                        turns: totalTaps / 10,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                        child: Image.asset(
                          Assets.images.sebha.path,
                          width: 400,
                          height: 400,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                      Text(
                sebha[sebhaIndex],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
                      Text(
                        '$counter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        ])
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}