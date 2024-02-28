import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        letterSpacing: -0.6,
        color: color,
        fontFamily: "NunitoSans",
        fontWeight: fontWeight,
      ),
    );
  }
}
