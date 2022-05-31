// @dart=2.9
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:admaya/intro_screen.dart';
// import 'package:admaya/screens/main/home_screen.dart';
import 'package:admaya/theme_provider.dart';
// import 'package:admaya/theme_provider.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en', 'US'),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Admaya',
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      home: IntroScreen(),
    );
  }
}
