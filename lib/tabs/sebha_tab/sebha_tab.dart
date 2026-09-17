import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              SizedBox(height: 30),
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
                  width: 250,
                  height: 260,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      
                       Align(
                        alignment: Alignment.topCenter,

                        
                        child: Image.asset(
                          Assets.images.sebhaHeader.path,
                          width: 90,
                          height: 54,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: AnimatedRotation(
                          turns: totalTaps / 10,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeOut,
                          child: SvgPicture.asset(
                            Assets.images.sebhaBody,
                            width: 220,
                            height: 220,
                          ),
                        ),
                      ),
                     
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            sebha[sebhaIndex],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8),
                          Text(
                            '$counter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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