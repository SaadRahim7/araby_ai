import 'package:araby_ai/screens/bottom_navbar.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailConfirmation extends StatelessWidget {
  const EmailConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/images/emailconfirmation.png",
                height: 220,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text:
                    "Hi username, Your email has been verified successfully in our system.",
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => const NavBar()),
                    );
                  },
                  width: double.infinity,
                  text: "START NOW")
            ],
          ),
        ),
      ),
    );
  }
}
