// ignore_for_file: use_key_in_widget_constructors

import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryContainer extends StatelessWidget {
  final String title;
  final String icon;
  final Function()? onTap;

  const CategoryContainer({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 73,
            height: 73,
            decoration: BoxDecoration(
              color: Theme.of(context).cardTheme.color,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SvgPicture.asset(
                icon,
                color: Theme.of(context).textTheme.bodyText1?.color,
              ),
            ),
          ),
          addVerticalSpace(8),
          Text(
            title,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Theme.of(context).textTheme.bodyText1?.color,
              fontFamily: 'Regular',
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
