import 'package:araby_ai/model/wallpaper_list.dart';
import 'package:araby_ai/widget/custom_card3.dart';
import 'package:araby_ai/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_textfeild.dart';

class ImageGenRes extends StatefulWidget {
  const ImageGenRes({super.key});

  @override
  State<ImageGenRes> createState() => _ImageGenResState();
}

class _ImageGenResState extends State<ImageGenRes> {
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                    color: Colors.white,
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios_new_rounded),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: CustomTextField(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                            ),
                            hintText: "Looking for something",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.notifications_none_rounded,
                          size: 38,
                        )
                      ],
                    )),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: const [TextImage(), Card()],
            ),
          )),
    );
  }
}

//Text

class TextImage extends StatelessWidget {
  const TextImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: CustomText(
        text:
            "“City made of glass, Illustration, Concept art, Digital art, HD, 8K, Cinematic lighting, Wallpaper, Aesthetic” ",
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.count(
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(
              wallpaperlist.length,
              (index) {
                return GridTile(
                    child: CustomCard3(image: wallpaperlist[index].image));
              },
            )),
      ),
    );
  }
}
