import 'dart:ffi';

import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/material.dart';

class ImageGen extends StatefulWidget {
  const ImageGen({super.key});

  @override
  State<ImageGen> createState() => _ImageGenState();
}

class _ImageGenState extends State<ImageGen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SearchTextSelect(),
              SizedBox(
                height: 10,
              ),
              ChipData(),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}

//SearchTextSelect
class SearchTextSelect extends StatefulWidget {
  const SearchTextSelect({super.key});

  @override
  State<SearchTextSelect> createState() => _SearchTextSelectState();
}

class _SearchTextSelectState extends State<SearchTextSelect> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Search and Notification
            SizedBox(
              child: Row(
                children: const [
                  Icon(Icons.arrow_back_ios_new_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomTextField(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 38,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Explore AI-genrated images",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Describe what is on your mind. For best results, be specific..",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  //text fiels
                  SizedBox(
                    width: double.infinity,
                    height: 140,
                    child: TextField(
                      maxLines: null,
                      expands: true,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'example: A car flying in th space',
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.all(10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xff2476dc)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  //Need Help Autu Selected
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Need some help ?",
                        textColor: Colors.grey[500],
                      ),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.select_all_outlined),
                          label: Text("Auto Selected"))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Chip data

class ChipData extends StatefulWidget {
  const ChipData({super.key});

  @override
  State<ChipData> createState() => _ChipDataState();
}

class _ChipDataState extends State<ChipData> {
  List<String> items = [
    'Portrait',
    'Illustration',
    'Concept art',
    'Concept art',
    'Impressionism',
    'Digital art',
    'V-Ray',
    'Portrait',
    'Portrait',
    'HD',
    '4K',
    '8K',
    'Monochromatic',
    'Ultra-realistic',
    'Soft lighting',
    '3D',
    'Aesthetic',
    'Glitter',
    'High quality',
    'Smooth',
    'Digital art',
    'Digital art',
    'Rich colors',
    'Impressionism',
    'Cartoon',
    'Monochromatic',
    'colorful',
    'V-Ray',
    'Wallpaper',
    'Artwork',
    'Photography',
    '3D',
    'Background',
    'Texture',
    'Texture',
    'Aesthetic',
    'Cartoon',
    'Portrait',
    'Illustration',
    'Concept art',
    'Impressionism',
    'Digital art',
    'V-Ray',
  ];
  List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        spacing: 5,
        children: items.map((item) {
          return ChoiceChip(
            backgroundColor: Colors.white,
            selectedColor: Color(0xffae9bfa),
            elevation: 0,
            shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
            label: Text(item),
            selected: selectedItems.contains(item),
            onSelected: (bool selected) {
              setState(() {
                if (selected) {
                  selectedItems.add(item);
                } else {
                  selectedItems.remove(item);
                }
              });
            },
          );
        }).toList(),
      ),
    );
  }
}

//Buttom

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: CustomButton(
              onPressed: () {},
              width: double.infinity,
              text: "Generate",
            )),
      ),
    );
  }
}
