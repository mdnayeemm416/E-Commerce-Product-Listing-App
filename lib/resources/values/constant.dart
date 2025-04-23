import 'package:flutter/material.dart';

class AppTexyStyle {
  static TextStyle largeText({
    Color? color,
    required BuildContext context,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: 14,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Colors.black,
    );
  }

  static TextStyle mediumText({
    Color? color,
    required BuildContext context,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: 12,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? Colors.black,
    );
  }

  static TextStyle smallText({
    Color? color,
    required BuildContext context,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: 10,
      fontFamily: fontFamily,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? Colors.black,
    );
  }
}
