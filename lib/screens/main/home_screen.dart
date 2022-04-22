// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:admaya/components/home/category_container.dart';
import 'package:admaya/components/home/current_location_container.dart';
import 'package:admaya/components/home/feed_card.dart';
import 'package:admaya/components/home/profile_photo.dart';
import 'package:admaya/models/category.dart';
import 'package:admaya/models/feed_card_list.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              elevation: 1,
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CurrentLocationContainer(),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfilePhoto(),
                )
              ],
              leadingWidth: 300,
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hello, Veekeo',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        fontFamily: 'Light',
                        fontSize: 15,
                      ),
                    ),
                    addVerticalSpace(10),
                    Text(
                      'What are you \nlooking for?',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        fontFamily: 'Bold',
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // addVerticalSpace(15),
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 40),
                    //     child: Container(
                    //       height: 50,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //           border: Border.all(
                    //             width: 1,
                    //             color: Theme.of(context).colorScheme.outline,
                    //           ),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(50))),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Icon(
                    //             LineIcons.search,
                    //           ),
                    //           addHorizontalSpace(20),
                    //           Text(
                    //             'Book your services',
                    //             style: TextStyle(
                    //               color: Colors.grey,
                    //               fontFamily: 'Light',
                    //               fontSize: 16,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                addVerticalSpace(25),
                Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 0,
                    crossAxisCount: 3,
                    children: [
                      CategoryContainer(
                        title: categories[1].title,
                        icon: categories[1].icon,
                        onTap: () {},
                      ),
                      CategoryContainer(
                        title: categories[2].title,
                        icon: categories[2].icon,
                        onTap: () {},
                      ),
                      CategoryContainer(
                        title: categories[3].title,
                        icon: categories[3].icon,
                        onTap: () {},
                      ),
                      CategoryContainer(
                        title: categories[4].title,
                        icon: categories[4].icon,
                        onTap: () {},
                      ),
                      CategoryContainer(
                        title: categories[5].title,
                        icon: categories[5].icon,
                        onTap: () {},
                      ),
                      CategoryContainer(
                        title: categories[6].title,
                        icon: categories[6].icon,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  addVerticalSpace(10),
                  Text(
                    'Suggested',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Theme.of(context).textTheme.bodyText1?.color,
                      fontFamily: 'Bold',
                      fontSize: 20,
                    ),
                  ),
                  addVerticalSpace(10),
                ],
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
