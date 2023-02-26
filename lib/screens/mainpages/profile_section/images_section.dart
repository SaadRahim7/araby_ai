import 'package:araby_ai/model/wallpaper_list.dart';
import 'package:araby_ai/widget/custom_card3.dart';
import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
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
    );
  }
}
