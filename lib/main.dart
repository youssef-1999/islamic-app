import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_theme.dart';
import 'package:islamy_app/screens/home_screen.dart';
import 'package:islamy_app/screens/intro_screen.dart';
import 'package:islamy_app/tabs/quran_tab/sura_screen_details.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      routes: {
        SuraScreenDetails.routeName: (context) => SuraScreenDetails(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      home: IntroScreen(),
    );
  }
}

