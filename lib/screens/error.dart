import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';

class Error404 extends StatelessWidget {
  const Error404({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 150,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.maxFinite,
                  transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                  child: Image.asset("lib/assets/images/background.png",
                      fit: BoxFit.fitWidth),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/images/error.png",
                height: 180,
              ),
              const CustomText(
                text: "Ooops!",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                text: "Page not Found",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomText(
                  text:
                      "the page you are looking for was removed, renamed, or might never exist!",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    width: double.infinity,
                    text: "Go Back"),
              )
            ],
          )
        ],
      ),
    ));
  }
}
