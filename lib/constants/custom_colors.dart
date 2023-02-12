import 'package:flutter/material.dart';

class CustomColors {
  static const colorBlue = Color(0xff0000FF);

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
