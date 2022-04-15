// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:admaya/constants.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  MainButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Medium',
          fontSize: 17,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        fixedSize: const Size(300, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
