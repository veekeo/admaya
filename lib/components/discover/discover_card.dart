// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DiscoverCard extends StatelessWidget {
  final String coverImage;
  final String name;
  final String price;
  final String time;
  final String reviews;
  final String address;

  DiscoverCard({
    required this.coverImage,
    required this.name,
    required this.price,
    required this.time,
    required this.reviews,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            margin: EdgeInsets.only(right: 10, left: 15),
            width: MediaQuery.of(context).size.width / 1.1,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              // color: Theme.of(context).cardTheme.color,
              // image: DecorationImage(
              //   alignment: Alignment.topCenter,
              //   image: AssetImage(coverImage),
              // ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250 / 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        image: AssetImage(coverImage),
                      ),
                    ),
                  ),
                  addVerticalSpace(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: kPrimaryColor,
                              fontFamily: 'Medium',
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          addVerticalSpace(4),
                          Text(
                            address,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color:
                                  Theme.of(context).textTheme.bodyText1?.color,
                              fontFamily: 'Regular',
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          addVerticalSpace(5),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    LineIcons.tag,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontFamily: 'Regular',
                                      fontSize: 12,
                                    ),
                                  ),
                                  addHorizontalSpace(10),
                                  Icon(
                                    LineIcons.userClock,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  addHorizontalSpace(5),
                                  Text(
                                    time,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontFamily: 'Regular',
                                      fontSize: 12,
                                    ),
                                  ),
                                  addHorizontalSpace(10),
                                  Icon(
                                    LineIcons.star,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(
                                    reviews,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontFamily: 'Regular',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            LineIcons.heart,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          height: 1,
          thickness: 1.5,
        ),
        addVerticalSpace(20),
      ],
    );
  }
}
