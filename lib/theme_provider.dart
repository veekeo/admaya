// ignore_for_file: prefer_const_constructors

import 'package:admaya/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 14, 0, 39),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      onSecondary: kPrimaryColor,
      primary: kPrimaryColor,
      outline: Colors.white,
    ),
    cardTheme: CardTheme(
      color: Color(0XFF333333),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    cardTheme: CardTheme(
      color: Color(0XFFF6F6F6),
    ),
    colorScheme: ColorScheme.light(
      onSecondary: Colors.black,
      secondary: Colors.black,
      outline: Colors.black,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
