// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
        addVerticalSpace(5),
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
                              color:
                                  Theme.of(context).textTheme.bodyText1?.color,
                              fontFamily: 'Medium',
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          addVerticalSpace(5),
                          RatingBar.builder(
                            unratedColor: Theme.of(context).cardTheme.color,
                            initialRating: 3,
                            itemSize: 12,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.circle,
                              color: kPrimaryColor,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          addVerticalSpace(4),
                          Text(
                            address,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color:
                                  Theme.of(context).textTheme.bodyText1?.color,
                              fontFamily: 'Regular',
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          children: [
                            Text(
                              '5.0',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.color!
                                    .withOpacity(0.5),
                                fontFamily: 'Bold',
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Reviews',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.color,
                                fontFamily: 'Regular',
                                fontSize: 10,
                              ),
                            ),
                          ],
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
        ),
      ],
    );
  }
}
