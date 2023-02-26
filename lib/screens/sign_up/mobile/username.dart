import 'package:araby_ai/screens/bottom_navbar.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Username extends StatefulWidget {
  const Username({super.key});

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Let's Pick you a Username ",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 25,
              ),

              // Create Username
              const CustomTextField(
                hintText: "Username",
                suffixIcon: Icon(
                  Icons.replay,
                  color: Colors.black,
                ),
              ),

              //Done Button
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => const NavBar()),
                    );
                  },
                  width: double.infinity,
                  text: "DONE"),

              //GIF
              Container(
                width: double.infinity,
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Image.asset("lib/assets/images/groupchat.png"),
                    ),
                    Positioned(
                      bottom: 15,
                      child: Image.asset(
                        "lib/assets/gif/robot2.gif",
                        height: 250,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
