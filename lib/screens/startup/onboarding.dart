import 'package:araby_ai/screens/startup/get_started.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              StackWIdget(),
              TextButtom(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                        builder: (context) => const GetStarted()),
                  );
                },
                width: double.infinity,
                text: "Get Started")),
      ),
    );
  }
}

//Stack
class StackWIdget extends StatelessWidget {
  const StackWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 400,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.maxFinite,
            transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            child: Image.asset("lib/assets/images/background.png",
                fit: BoxFit.cover),
          ),
          Positioned(
            top: 100,
            child: SizedBox(
              child: Image.asset(height: 300, "lib/assets/gif/robot.gif"),
            ),
          ),
        ],
      ),
    );
  }
}

//Text And Button

class TextButtom extends StatefulWidget {
  const TextButtom({super.key});

  @override
  State<TextButtom> createState() => _TextButtomState();
}

class _TextButtomState extends State<TextButtom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const [
          CustomText(
            text: "An AI based content generator",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "In a few minutes you can create",
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Social Media Content, Emails And Much More..",
          ),

          //button
          // SizedBox(
          //   height: 30,
          // ),
          // CustomButton(
          //     onPressed: () {}, width: double.infinity, text: "GET STARTED")
        ],
      ),
    );
  }
}
