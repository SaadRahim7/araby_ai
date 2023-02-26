import 'package:flutter/material.dart';

import '../../model/wallpaper_list.dart';

class ImageDownload extends StatelessWidget {
  const ImageDownload({super.key, this.wallpaper});

  final Wallpaper? wallpaper;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [Expanded(child: Image.asset(wallpaper!.image))],
      ),
    ));
  }
}
