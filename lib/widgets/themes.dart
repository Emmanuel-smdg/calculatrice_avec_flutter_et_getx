import 'package:flutter/material.dart';

const Color colorBlueDark = Color(0xFF22252e);
const Color colorBlue = Color(0xFF292D36);
const Color colorRed = Color(0xFFD76061);
const Color colorGreen = Color(0xFF3CF0CC);
final Color colorGrey = Colors.grey.withOpacity(0.1);

class Themes {
  static final light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Colors.white,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    backgroundColor: colorBlueDark,
    primaryColor: colorBlueDark,
    brightness: Brightness.dark,
  );
}

TextStyle kTextStyle(double size) {
  return TextStyle(
    fontSize: size,
    fontWeight: FontWeight.bold,
  );
}