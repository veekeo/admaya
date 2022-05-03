// ignore_for_file: implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPageHeader implements SliverPersistentHeaderDelegate {
  CustomPageHeader({
    required this.maxExtent,
    required this.minExtent,
    required this.coverImage,
    required this.name,
    required this.address,
  });

  @override
  final double minExtent;
  @override
  final double maxExtent;
  final String coverImage;
  final String name;
  final String address;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: maxExtent,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  coverImage,
                  fit: BoxFit.cover,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.transparent,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        addVerticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                      fontFamily: 'Bold',
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  addVerticalSpace(5),
                  Text(
                    address,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                      fontFamily: 'Light',
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FaIcon(
                      FontAwesomeIcons.solidMessage,
                      color: Colors.white,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: kPrimaryColor,
                  fixedSize: const Size(30, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => null;
}
