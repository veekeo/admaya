// ignore_for_file: prefer_const_constructors

import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class FeedbackAndSupportScreen extends StatelessWidget {
  const FeedbackAndSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Theme.of(context).colorScheme.outline,
                      size: 20,
                    ),
                  ),
                  addHorizontalSpace(20),
                  Text(
                    'Feedback & Support',
                    style: TextStyle(
                      fontFamily: 'Bold',
                      fontSize: 23,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                    ),
                  ),
                ],
              ),
            ),
            addDividerWithPadding(16),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Text(
                  'Rate Admaya on Google Play',
                  style: TextStyle(
                    fontFamily: 'Light',
                    fontSize: 17,
                    color: Theme.of(context).textTheme.bodyText1?.color,
                  ),
                ),
              ),
            ),
            addDividerWithPadding(16),
          ],
        ),
      ),
    );
  }
}
