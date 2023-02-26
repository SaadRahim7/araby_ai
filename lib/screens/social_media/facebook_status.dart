import 'package:araby_ai/screens/social_media/facebook_status_result.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookStatus extends StatefulWidget {
  const FacebookStatus({super.key});

  @override
  State<FacebookStatus> createState() => _FacebookStatusState();
}

class _FacebookStatusState extends State<FacebookStatus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/assets/socialimage/facebook.png', // replace with your image path
                fit: BoxFit.contain,
                height: 32,
              ),
              const SizedBox(width: 15),
              const Text(
                'Facebook Status',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const [
                ListAndButton(),
              ],
            ),
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
                        builder: (context) => const FacebookResult()),
                  );
                },
                width: double.infinity,
                text: "Generate")),
      ),
    );
  }
}

class ListAndButton extends StatefulWidget {
  const ListAndButton({super.key});

  @override
  State<ListAndButton> createState() => _ListAndButtonState();
}

class _ListAndButtonState extends State<ListAndButton> {
  String? _languageselected;
  String? _captionselected;
  final language = ['English', 'Hindi', 'Franch', 'Urdu', 'Arabic'];
  final caption = [
    'Appreciative',
    'Assertive',
    'Casual',
    'Funny',
    'Joyful',
    'Passionate',
    'Sadness',
    'Worried'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          const CustomText(text: "PLease select the language:"),
          const SizedBox(
            height: 8,
          ),
          //language button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12)),
            width: double.infinity,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _languageselected,
                onChanged: (newValue) {
                  setState(() {
                    _languageselected = newValue!;
                  });
                },
                items: language.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),

          //Post About
          const CustomText(text: "What would like to post about:"),
          const SizedBox(
            height: 8,
          ),
          CustomTextField(),
          const SizedBox(
            height: 18,
          ),

          //Caption to sound
          const CustomText(text: "What do you want the caption to sound:"),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12)),
            width: double.infinity,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _captionselected,
                onChanged: (newValue) {
                  setState(() {
                    _captionselected = newValue!;
                  });
                },
                items: caption.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
