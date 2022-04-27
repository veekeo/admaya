// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:admaya/components/home/category_container.dart';
import 'package:admaya/components/home/current_location_container.dart';
import 'package:admaya/components/home/feed_card.dart';
import 'package:admaya/components/home/profile_photo.dart';

import 'package:admaya/models/feed_card_list.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CurrentLocationContainer(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ProfilePhoto(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Text(
              'Explore',
              style: TextStyle(
                fontFamily: 'Bold',
                fontSize: 28,
                color: Theme.of(context).textTheme.bodyText1?.color,
              ),
            ),
          ),
          SizedBox(
            height: 111,
            child: CategoryContainer(),
          ),
          addVerticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Text(
              'Nearby',
              style: TextStyle(
                fontFamily: 'Bold',
                fontSize: 20,
                color: Theme.of(context).textTheme.bodyText1?.color,
              ),
            ),
          ),
          addVerticalSpace(5),
          SizedBox(
            height: 240,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return FeedCard(
                  coverImage: feedCardLists[index].coverImage,
                  name: feedCardLists[index].name,
                  address: feedCardLists[index].address,
                  price: feedCardLists[index].price,
                  time: feedCardLists[index].time,
                  reviews: feedCardLists[index].reviews,
                );
              },
              itemCount: feedCardLists.length,
            ),
          ),
          Divider(height: 1),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          //   child: Text(
          //     'Suggested',
          //     style: TextStyle(
          //       fontFamily: 'Bold',
          //       fontSize: 20,
          //       color: Theme.of(context).textTheme.bodyText1?.color,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 240,
          //   child: ListView.builder(
          //     clipBehavior: Clip.none,
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     physics: ScrollPhysics(),
          //     itemBuilder: (context, index) {
          //       return FeedCard(
          //         coverImage: feedCardLists[index].coverImage,
          //         name: feedCardLists[index].name,
          //         address: feedCardLists[index].address,
          //         price: feedCardLists[index].price,
          //         time: feedCardLists[index].time,
          //         reviews: feedCardLists[index].reviews,
          //       );
          //     },
          //     itemCount: feedCardLists.length,
          //   ),
          // ),
        ],
      ),
    );
  }
}


//  leading: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CurrentLocationContainer(),
//               ),
//               actions: [



