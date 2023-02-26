import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/plan_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_textfeild.dart';

class Plan extends StatefulWidget {
  const Plan({super.key});

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Material(
            color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset("lib/assets/images/logo.png", height: 40),
                      const SizedBox(
                        width: 20,
                      ),
                      const Expanded(
                        child: CustomTextField(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                          ),
                          hintText: "Looking for something",
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.notifications_none_rounded,
                        size: 38,
                      )
                    ],
                  )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(text: "Monthly"),
                    CupertinoSwitch(
                      value: switchValue,
                      activeColor: Color(0xff7a14ff),
                      trackColor: Color(0xff2476dc),
                      onChanged: (bool? value) {
                        setState(() {
                          switchValue = value ?? false;
                        });
                      },
                    ),
                    const CustomText(text: "Annual"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const PlanCard(
                  title: "Trial Plan",
                  price: "Free",
                  decription: "2,500 words / 20 images",
                  image: "lib/assets/images/rocket1.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                const PlanCard(
                  title: "Trial Plan",
                  price: "Free",
                  decription: "2,500 words / 20 images",
                  image: "lib/assets/images/rocket2.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                const PlanCard(
                  title: "Trial Plan",
                  price: "Free",
                  decription: "2,500 words / 20 images",
                  image: "lib/assets/images/rocket3.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
