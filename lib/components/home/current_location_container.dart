// ignore_for_file: prefer_const_constructors

import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CurrentLocationContainer extends StatelessWidget {
  const CurrentLocationContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 30,
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              LineIcons.mapMarker,
              size: 15,
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
            Text(
              'Oshodi',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontFamily: 'Medium',
              ),
            ),
            addHorizontalSpace(5),
            Icon(
              LineIcons.angleDown,
              size: 12,
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
          ],
        ),
      ),
    );
  }
}
