// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 6, 0, 17),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),
    cardColor: Color(0XFF333333),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    cardColor: Color(0XFFF6F6F6),
    colorScheme: ColorScheme.light(),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
