import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String text;
  final Color color;
  const SubTitle({required this.text, this.color = Colors.white, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
