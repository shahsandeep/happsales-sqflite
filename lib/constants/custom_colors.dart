import 'package:flutter/material.dart';

class CustomColors {
  static const firstItem = Color(0xFFe47175);
  static const secondItem = Color(0xFFe46592);
  static const thirdItem = Color(0xFFb36abf);

  static Color convertColor(String color) {
    color = color.trim().replaceAll("#", "");
    if (color.length == 6) {
      return Color(int.parse("0xFF$color"));
    } else if (color.length == 8) {
      return Color(int.parse("0x$color"));
    } else {
      return Colors.white12;
    }
  }
}
