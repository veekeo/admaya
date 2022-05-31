// @dart=2.9
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, missing_return, void_checks

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/screens/beauticians/reviews/reviews_card.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ReviewsScreen extends StatefulWidget {
  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              extendedSizeConstraints:
                  BoxConstraints.tightFor(width: 150, height: 50)),
        ),
        child: FloatingActionButton.extended(
          elevation: 2,
          onPressed: () {
            return showMaterialModalBottomSheet(
              context: context,
              builder: (context) {
                return WriteReviewScreen();
              },
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            );
          },
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          label: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              children: [
                Text(
                  'WRITE A REVIEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Medium',
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
            child: Center(
              child: Text(
                'Ratings and reviews',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontFamily: 'Medium',
                  fontSize: 18,
                ),
              ),
            ),
          ),
          addVerticalSpace(10),
          Padding(
            padding: const EdgeInsets.all(8.0)
                .copyWith(bottom: 20), // Ratings bar with star
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontFamily: 'Medium',
                        fontSize: 60,
                      ),
                    ),
                    addVerticalSpace(6),
                    RatingBar.builder(
                      itemSize: 12,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: kPrimaryColor,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
                addHorizontalSpace(30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      verticalDirection: VerticalDirection.up,
                      children: List.generate(
                        5,
                        (index) {
                          int i = index + 1;
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              i.toString(),
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.bodyText1.color,
                                fontFamily: 'Regular',
                                fontSize: 10,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ratingBar(100),
                        ratingBar(30),
                        ratingBar(50),
                        ratingBar(40),
                        ratingBar(10),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          addVerticalSpace(15),
          addDividerWithPadding(0),
          ReviewCard(),
          ReviewCard(),
        ],
      ),
    );
  }

  Padding ratingBar(double rate) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, left: 10, bottom: 3.5),
      child: Container(
        height: 7,
        width: rate,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

class WriteReviewScreen extends StatelessWidget {
  const WriteReviewScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 8,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          addVerticalSpace(30),
          Column(
            children: [
              Text(
                'Whats your rating?',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontFamily: 'Medium',
                  fontSize: 20,
                ),
              ),
              addVerticalSpace(20),
              RatingBar.builder(
                unratedColor: Colors.grey.withOpacity(0.3),
                itemSize: 40,
                initialRating: 1,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 6),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          addVerticalSpace(35),
          Text(
            'Describe your experience',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1.color,
              fontFamily: 'Medium',
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              cursorColor: kPrimaryColor,
              cursorWidth: 1,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
                fontFamily: 'Regular',
                fontSize: 14,
                height: 1.5,
              ),
              maxLength: 500,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Your review (optional)',
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontFamily: 'Light',
                  fontSize: 14,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          addVerticalSpace(100),
          MainButton(
            onPressed: () {},
            text: 'Send',
            color: kPrimaryColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
