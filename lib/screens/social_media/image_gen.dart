import 'dart:ffi';

import 'package:araby_ai/screens/social_media/image_gen_resuly.dart';
import 'package:araby_ai/widget/custom_button.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:araby_ai/widget/custom_textfeild.dart';
import 'package:flutter/cupertino.dart';
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
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded)),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: CustomTextField(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
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
                  const SizedBox(
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
                          icon: const Icon(Icons.select_all_outlined),
                          label: const Text("Auto Selected"))
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
        children: items.map(
          (item) {
            bool isSelected = false;
            if (selectedItems.contains(item)) {
              isSelected = true;
            }
            return GestureDetector(
              onTap: () {
                if (!selectedItems.contains(item)) {
                  if (selectedItems.length < 10) {
                    selectedItems.add(item);
                    setState(() {});
                  }
                } else {
                  selectedItems.removeWhere((element) => element == item);
                  setState(() {});
                }
              },
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: isSelected
                                ? const Color(0xff7a14ff)
                                : const Color.fromARGB(255, 232, 232, 232),
                            width: 2)),
                    child: Text(
                      item,
                    ),
                  )),
            );
          },
        ).toList(),
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
            decoration: const BoxDecoration(color: Colors.white),
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const ImageGenRes()),
                );
              },
              width: double.infinity,
              text: "Generate",
            )),
      ),
    );
  }
}
