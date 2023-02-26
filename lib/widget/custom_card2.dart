import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
    required this.title,
    this.image,
    this.decription,
    this.onTap,
  });

  final String title;
  final String? decription;
  final String? image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: SizedBox(
            height: 180,

            // width: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (image != null) Image.asset(image!, height: 70),
                const SizedBox(
                  height: 25,
                ),
                CustomText(text: title),
                Text(
                  decription ?? "",
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
