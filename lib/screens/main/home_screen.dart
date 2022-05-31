// @dart=2.9
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:admaya/components/discover/discover_card.dart';
import 'package:admaya/components/home/category_container.dart';
import 'package:admaya/components/home/current_location_container.dart';
import 'package:admaya/components/home/profile_photo.dart';
import 'package:admaya/models/neaby_list.dart';
import 'package:admaya/screens/beauticians/beauticians_page.dart';
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
      body: SafeArea(
        child: ListView(
          addAutomaticKeepAlives: true,
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
            addVerticalSpace(10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontFamily: 'Bold',
                  fontSize: 28,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
            ),
            addVerticalSpace(20),
            SizedBox(
              height: 111,
              child: CategoryContainer(),
            ),
            addVerticalSpace(10),
            Divider(height: 1),
            addVerticalSpace(10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Text(
                'Nearby',
                style: TextStyle(
                  fontFamily: 'Bold',
                  fontSize: 20,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Nearby(
                    coverImage: nearbyLists[index].coverImage,
                    name: nearbyLists[index].name,
                    price: nearbyLists[index].price,
                    time: nearbyLists[index].time,
                    reviews: nearbyLists[index].reviews,
                    address: nearbyLists[index].address,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BeauticiansPageScreen(
                          headerImage: nearbyLists[index].coverImage,
                          name: nearbyLists[index].name,
                          address: nearbyLists[index].address,
                          services: nearbyLists[index].services,
                          portfolio: nearbyLists[index].portfolio,
                          email: nearbyLists[index].email,
                          phoneNumber: nearbyLists[index].phoneNumber,
                        );
                      }));
                    },
                  );
                },
                itemCount: nearbyLists.length,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Text(
                'Recommended',
                style: TextStyle(
                  fontFamily: 'Bold',
                  fontSize: 20,
                  color: Theme.of(context).textTheme.bodyText1?.color,
                ),
              ),
            ),
            // Expanded(
            //   child: SizedBox(
            //     height: 280,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       physics: ScrollPhysics(),
            //       itemBuilder: (context, index) {
            //         return Nearby(
            //             coverImage: nearbyLists[index].coverImage,
            //             name: nearbyLists[index].name,
            //             price: nearbyLists[index].price,
            //             time: nearbyLists[index].time,
            //             reviews: nearbyLists[index].reviews,
            //             address: nearbyLists[index].address);
            //       },
            //       itemCount: nearbyLists.length,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
