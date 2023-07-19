import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.alignment,
    required this.textColor,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
  });

  final String text;
  final TextAlign alignment;
  final Color textColor;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
    );
  }
}
