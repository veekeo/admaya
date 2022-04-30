// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget addDividerWithPadding(double width) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width),
    child: Divider(
      height: 1,
    ),
  );
}
