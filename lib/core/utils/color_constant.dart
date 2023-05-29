import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#595859');

  static Color gray400 = fromHex('#bebdbd');

  static Color gray500 = fromHex('#9e9c9c');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#444444');

  static Color black9003f = fromHex('#3f000000');

  static Color gray100 = fromHex('#f7f7f7');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#a5a5a5');

  static Color deepPurpleA700 = fromHex('#5f05f2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70001 = fromHex('#716565');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
