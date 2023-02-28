import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [const ImageProfile(), const EditDetails()],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   CupertinoPageRoute(
                  //       builder: (context) => ()),
                  // );
                },
                width: double.infinity,
                text: "Get Started")),
      ),
    );
  }
}

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                  ),
                ),
              ),
              const Positioned(
                top: 20,
                left: 80,
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xff4343e2)),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image.asset("lib/assets/images/profile.png",
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class EditDetails extends StatefulWidget {
  const EditDetails({super.key});

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(text: 'Name :'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: "Username",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(text: 'Email :'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: "you@example.com",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(text: 'Phone Number :'),
          const SizedBox(
            height: 10,
          ),
          IntlPhoneField(
            decoration: const InputDecoration(
              labelText: "Phone Number",
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
          const CustomText(text: 'Occupation :'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: "Enter yourOccupation",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(text: 'Date of Birth :'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hintText: "DD/MM/YYYY",
          ),
        ],
      ),
    );
  }
}
