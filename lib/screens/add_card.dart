import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            StackI(),
            NewCard(),
          ],
        ),
      ),
    );
  }
}

class StackI extends StatelessWidget {
  const StackI({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.maxFinite,
            transform: Matrix4.translationValues(0.0, -80.0, 0.0),
            child: Image.asset("lib/assets/images/background.png",
                fit: BoxFit.cover),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
            ),
          ),
          const Positioned(
            top: 20,
            left: 60,
            child: Text(
              "Payments and Cards",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: "Card Holder Name:"),
            const SizedBox(height: 8),
            const CustomTextField(),
            const SizedBox(
              height: 25,
            ),
            const CustomText(text: "Card Number:"),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(text: "Expariation Date:"),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        SizedBox(
                          width: 100,
                          child: CustomTextField(),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 100,
                          child: CustomTextField(),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Expariation Date:"),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          child: CustomTextField(),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            CustomButton(
                onPressed: () {}, width: double.infinity, text: "Add Card")
          ],
        ),
      ),
    );
  }
}
