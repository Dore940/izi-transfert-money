import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueA70026 = fromHex('#26005cff');

  static Color pink40026 = fromHex('#26e84c88');

  static Color bluegray50 = fromHex('#f1f1f1');

  static Color lightBlue50026 = fromHex('#2600aff0');

  static Color indigoA200 = fromHex('#5950f6');

  static Color indigoA100 = fromHex('#8982ff');

  static Color blue7003f = fromHex('#3f2472d5');

  static Color lightBlue80026 = fromHex('#260274b3');

  static Color blueA70066 = fromHex('#660062f5');

  static Color deepPurple300 = fromHex('#8871e4');

  static Color gray50 = fromHex('#f9f9f9');

  static Color teal300 = fromHex('#5bcaa1');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black900 = fromHex('#000000');

  static Color greenA70026 = fromHex('#261dd75f');

  static Color deepPurpleA400 = fromHex('#5c33f6');

  static Color gray301 = fromHex('#e6e6e6');

  static Color gray500 = fromHex('#aaaaaa');

  static Color gray203 = fromHex('#efefef');

  static Color gray901 = fromHex('#161616');

  static Color indigo50 = fromHex('#e4e2ff');

  static Color gray900 = fromHex('#131313');

  static Color indigo51 = fromHex('#e4e3ff');

  static Color bluegray100 = fromHex('#cccccc');

  static Color black9000c = fromHex('#0c000000');

  static Color teal80026 = fromHex('#26007348');

  static Color gray200 = fromHex('#eeeeee');

  static Color gray300 = fromHex('#dddddd');

  static Color amber60026 = fromHex('#26ffb700');

  static Color gray100 = fromHex('#f3f3f3');

  static Color blue7005b = fromHex('#5b2472d5');

  static Color deepPurple50 = fromHex('#edecff');

  static Color indigo100 = fromHex('#ccd6eb');

  static Color black90011 = fromHex('#11000000');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#cfd5e1');

  static Color gray40026 = fromHex('#26bbbbbb');

  static Color redA70026 = fromHex('#26e50812');

  static Color whiteA701 = fromHex('#fdfdfd');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
