// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, avoid_print

import 'package:admaya/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  final String coverImage;
  final String name;
  final String price;
  final String time;
  final String reviews;
  final String address;

  FeedCard({
    required this.coverImage,
    required this.name,
    required this.price,
    required this.time,
    required this.reviews,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: AssetImage(coverImage),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(10),
              Text(
                name,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                  fontFamily: 'Bold',
                  fontSize: 18,
                ),
              ),
              addVerticalSpace(5),
              RatingBar.builder(
                unratedColor: Theme.of(context).cardTheme.color,
                initialRating: 3,
                itemSize: 13,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.circle,
                  color: kPrimaryColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              addVerticalSpace(5),
              Text(
                address,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                  fontFamily: 'Light',
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
