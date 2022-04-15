// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 6, 0, 17),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
