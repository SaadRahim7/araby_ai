import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, required this.title, this.image, this.decription});

  final String title;
  final String? decription;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 120,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) Image.asset(image!, height: 70),
            const SizedBox(
              height: 8,
            ),
            CustomText(text: title),
            Text(
              decription ?? "",
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
