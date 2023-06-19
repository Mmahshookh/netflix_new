import 'package:flutter/material.dart';

class TitleWidgets extends StatelessWidget {
  final String title;
  final double fontSize;
  const TitleWidgets({Key? key, required this.title, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
