// @dart=2.9
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  Services({this.services});

  final Map<String, String> services;

  @override
  State<Services> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: widget.services.length,
        itemBuilder: ((context, index) {
          String serviceTitle = widget.services.keys.elementAt(index);
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          serviceTitle,
                          style: TextStyle(
                            fontFamily: 'Medium',
                            fontSize: 14,
                          ),
                        ),
                        addVerticalSpace(5),
                        Text(
                          widget.services[serviceTitle],
                          style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'Book',
                          style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(26),
                addDividerWithPadding(16),
              ],
            ),
          );
        }));
  }
}
