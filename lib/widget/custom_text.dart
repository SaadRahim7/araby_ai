import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.bg,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? bg;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: TextStyle(
          backgroundColor: bg ?? Colors.transparent,
          color: textColor ?? Colors.black,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
