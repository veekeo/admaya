// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:admaya/components/discover/discover_card.dart';
import 'package:admaya/components/home/feed_card.dart';
import 'package:admaya/models/discover_card_list.dart';
import 'package:admaya/models/feed_card_list.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class AllServices extends StatefulWidget {
  @override
  State<AllServices> createState() => _AllServicesState();
}

class _AllServicesState extends State<AllServices> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0, bottom: 10),
              child: Text(
                'Suggested',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                  fontFamily: 'Bold',
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        addVerticalSpace(10),
        SizedBox(
          height: 250,
          child: ListView.builder(
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
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 14),
          child: Text(
            'Results(1500)',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Theme.of(context).textTheme.bodyText1?.color,
              fontFamily: 'Bold',
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return DiscoverCard(
                  coverImage: discoverCardLists[index].coverImage,
                  name: discoverCardLists[index].name,
                  price: discoverCardLists[index].price,
                  time: discoverCardLists[index].time,
                  reviews: discoverCardLists[index].reviews,
                  address: discoverCardLists[index].address);
            },
            itemCount: feedCardLists.length,
          ),
        ),
      ],
    );
  }
}
