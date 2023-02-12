import 'dart:ui';

import 'package:happsales_asignment/constants/custom_colors.dart';

class HelperFunctions {
  static String getTitle(String title) {
    try {
      return title.substring(0, 1);
    } catch (e) {
      return "";
    }
  }

  static Color getColor(int index) {
    if ((index + 1) % 2 == 0) {
      return CustomColors.firstItem;
    }
    if ((index + 1) % 3 == 0) {
      return CustomColors.secondItem;
    }
    return CustomColors.thirdItem;
  }
}
