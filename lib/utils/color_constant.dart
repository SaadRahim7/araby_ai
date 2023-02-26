import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color lightBlueA200 = fromHex('#3cc8eb');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black900 = fromHex('#000000');

  static Color deepPurpleA400 = fromHex('#7a14ff');

  static Color deepPurpleA100 = fromHex('#c7a1ff');

  static Color lightBlueA20001 = fromHex('#47c9fc');

  static Color purpleA200 = fromHex('#d851ef');

  static Color lightBlueA20066 = fromHex('#6647c9fc');

  static Color lightBlueA700Cc = fromHex('#cc0084fc');

  static Color purple300 = fromHex('#db63c3');

  static Color black90026 = fromHex('#26000000');

  static Color gray600 = fromHex('#757575');

  static Color gray400 = fromHex('#c7c7c7');

  static Color gray60001 = fromHex('#787579');

  static Color blueGray100 = fromHex('#d1d3d9');

  static Color blue700 = fromHex('#1171d8');

  static Color gray900 = fromHex('#121212');

  static Color purple300Cc = fromHex('#ccdb63c3');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#eeeeee');

  static Color gray300 = fromHex('#dddddd');

  static Color black90011 = fromHex('#11000000');

  static Color indigoA700 = fromHex('#4042e2');

  static Color gray40087 = fromHex('#87aeaeb2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepPurpleA200Cc = fromHex('#cca242ea');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
