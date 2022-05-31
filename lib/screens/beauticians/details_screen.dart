// @dart=2.9
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0).copyWith(top: 0),
      children: [
        addVerticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ABOUT US',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: 13,
                ),
              ),
              addVerticalSpace(10),
              Text(
                'I am a proffesional hair stylist,who is self taught and can satisfy your needs...',
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 12,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.6),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        addVerticalSpace(30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'CONTACT & BUSINESS HOURS',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: 13,
                ),
              ),
            ),
            addVerticalSpace(16),
            addDividerWithPadding(16),
            addVerticalSpace(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        size: 19,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .color
                            .withOpacity(0.4),
                      ),
                      addHorizontalSpace(10),
                      Text(
                        '+234 814 752 680',
                        style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 15,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .color
                              .withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .color
                            .withOpacity(0.4),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Call',
                        style: TextStyle(
                          fontFamily: 'Medium',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(16),
            addDividerWithPadding(16),
            addVerticalSpace(16),
            BusinessHours(),
            addVerticalSpace(16),
            addDividerWithPadding(16),
            addVerticalSpace(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'SOCIAL MEDIA & SHARE',
                style: TextStyle(
                  fontFamily: 'Medium',
                  fontSize: 13,
                ),
              ),
            ),
            addVerticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.instagramSquare,
                      size: 45,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.5),
                    ),
                    addVerticalSpace(8),
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 45,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.5),
                    ),
                    addVerticalSpace(8),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        addVerticalSpace(20),
        addDividerWithPadding(16),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Report',
                  style: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 17,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey.withOpacity(0.4),
                  size: 12,
                ),
              ],
            ),
          ),
        ),
        addDividerWithPadding(16),
      ],
    );
  }
}

class BusinessHours extends StatelessWidget {
  const BusinessHours({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Monday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Tuesday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Wednesday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Thursday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Friday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Saturday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Sunday',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  '9:00 AM - 5:30 PM',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  '9:00 AM - 6:00 PM',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  '2:00 PM - 4:00 PM',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  '10:00 AM - 3:00 PM ',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  '9:00 AM - 4:00PM',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  '12:00PM - 3:00PM',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Closed',
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 15,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .color
                        .withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
