// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:admaya/utils/helper.dart';

import 'package:flutter/material.dart';

class OulineButtonContainer extends StatelessWidget {
  final String image, text;
  final Function()? onPressed;
  OulineButtonContainer(
      {required this.image, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 25,
              height: 25,
            ),
            addHorizontalSpace(20),
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.outline,
                fontFamily: 'Light',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
