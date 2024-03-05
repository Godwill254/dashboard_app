// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import "./colors.dart";

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;

  const PrimaryText({
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.primary,
    this.size = 20,
    this.height = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: "Kalnia",
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
