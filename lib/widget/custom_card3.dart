import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCard3 extends StatelessWidget {
  const CustomCard3({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: SizedBox(
        height: 140,
        width: 140,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
