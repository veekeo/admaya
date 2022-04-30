// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/screens/profile/about_admaya/about_admaya.dart';
import 'package:admaya/screens/profile/account_settings/account_settings.dart';
import 'package:admaya/screens/profile/add_payments_card/add_payment_card.dart';
import 'package:admaya/screens/profile/feedback_&_Support/feedback_and_support.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/profilepic.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  addHorizontalSpace(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Veekeo',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          fontSize: 23,
                          color: Theme.of(context).textTheme.bodyText1?.color,
                        ),
                      ),
                      Text(
                        '+234 814 575 2680',
                        style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: 14,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.color!
                                .withOpacity(0.5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            addVerticalSpace(25),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AccountSettingsScreen();
                }));
              },
              profileLink: 'Account & Settings',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddPaymentsCardScreen();
                }));
              },
              profileLink: 'Payments',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FeedbackAndSupportScreen();
                }));
              },
              profileLink: 'Feedback & Support',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutAdmayaScreen();
                }));
              },
              profileLink: 'About Admaya',
            ),
            addDividerWithPadding(16),
            ProfileTile(
              onTap: () {},
              profileLink: 'Logout',
            ),
            addDividerWithPadding(16),
            addVerticalSpace(100),
            MainButton(
              onPressed: () {},
              text: 'Work jobs',
              color: kPrimaryColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final Function()? onTap;
  final String profileLink;

  ProfileTile({required this.onTap, required this.profileLink});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              profileLink,
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
    );
  }
}
