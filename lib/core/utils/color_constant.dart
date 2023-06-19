import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#777777');

  static Color gray5001 = fromHex('#f9f9f9');

  static Color gray500 = fromHex('#999999');

  static Color blueGray100 = fromHex('#cbcbcb');

  static Color blueGray400 = fromHex('#888888');

  static Color blue800 = fromHex('#1254b6');

  static Color gray900 = fromHex('#191919');

  static Color blueA200 = fromHex('#438dfa');

  static Color indigoA100 = fromHex('#a5a6f6');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#f0f0f0');

  static Color gray50 = fromHex('#f4f9ff');

  static Color indigo300 = fromHex('#7879f1');

  static Color black900 = fromHex('#000000');

  static Color blueGray900 = fromHex('#333333');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
