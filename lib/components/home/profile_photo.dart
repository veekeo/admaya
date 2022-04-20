// ignore_for_file: prefer_const_constructors

import 'package:admaya/constants.dart';
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/profilepic.jpg',
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: kPrimaryColor,
          width: 3,
          style: BorderStyle.solid,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
