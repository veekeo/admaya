// @dart=2.9
// ignore_for_file: implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';

class CustomPageHeader implements SliverPersistentHeaderDelegate {
  final _titleMarginTween = EdgeInsetsTween(
    begin: EdgeInsets.only(left: 16.0, top: 10.0, bottom: 15),
    end: EdgeInsets.only(left: 64.0, top: 40.0),
  );

  final _avatarAlignTween =
      AlignmentTween(begin: Alignment.bottomLeft, end: Alignment.topLeft);

  CustomPageHeader({
    this.maxExtent,
    this.coverImage,
    this.name,
    this.address,
  });

  @override
  double get minExtent => 80;
  @override
  final double maxExtent;
  final String coverImage;
  final String name;
  final String address;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double tempVal = 72 * maxExtent / 100;
    final progress = shrinkOffset > tempVal ? 1.0 : shrinkOffset / tempVal;
    final titleMargin = _titleMarginTween.lerp(progress);

    final avatarAlign = _avatarAlignTween.lerp(progress);

    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedContainer(
          curve: Curves.ease,
          duration: Duration(milliseconds: 100),
          height: 80,
          constraints: BoxConstraints(maxHeight: minExtent),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        Container(
          height: progress < 0.4 ? 100 * (1 - progress) * 1.5 : 0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(coverImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                progress < 0.4
                    ? Colors.transparent
                    : Theme.of(context).scaffoldBackgroundColor,
                progress < 0.4
                    ? Colors.black.withOpacity(0.8)
                    : Theme.of(context).scaffoldBackgroundColor,
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 45),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: progress < 0.4
                      ? Colors.white
                      : Theme.of(context).textTheme.bodyText1.color,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: titleMargin,
          child: Align(
            alignment: avatarAlign,
            child: Text(
              name,
              style: TextStyle(
                  color: progress < 0.4
                      ? Colors.white
                      : Theme.of(context).textTheme.bodyText1.color,
                  fontSize: 25 + (5 * (1 - progress)),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Bold'),
            ),
          ),
        ),
      ],
    );

    // Padding(
    //   padding: titleMargin,
    //   child: Align(
    //     alignment: avatarAlign,
    //     child: Text(
    //       name,
    //       style: TextStyle(
    //         color: Colors.black,
    //         fontSize: 18 + (5 * (1 - progress)),
    //         fontWeight: FontWeight.w600,
    //         fontFamily: 'Medium',
    //       ),
    //     ),
    //   ),
    // ),
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  PersistentHeaderShowOnScreenConfiguration get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;

  @override
  TickerProvider get vsync => null;
}
