// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables

import 'package:admaya/constants.dart';
import 'package:admaya/models/category.dart';
import 'package:admaya/screens/all.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: categories.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      border: Border.all(
                        width: 1,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        LineIcons.search,
                      ),
                      addHorizontalSpace(20),
                      Text(
                        'What are you looking for?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Light',
                          fontSize: 15,
                        ),
                      ),
                      addHorizontalSpace(30),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelStyle: TextStyle(fontFamily: 'Medium'),
                  controller: _tabController,
                  labelColor: Theme.of(context).textTheme.bodyText1?.color,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: kPrimaryColor,
                  indicatorWeight: 5,
                  tabs: [
                    Tab(text: categories[0].title),
                    Tab(text: categories[1].title),
                    Tab(text: categories[2].title),
                    Tab(text: categories[3].title),
                    Tab(text: categories[4].title),
                    Tab(text: categories[5].title),
                    Tab(text: categories[6].title),
                  ],
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).cardTheme.color,
              height: 1,
              thickness: 1.5,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(child: AllServices()),
                  Center(child: Text('There')),
                  Center(child: Text('Hello')),
                  Center(child: Text('Hello')),
                  Center(child: Text('Hello')),
                  Center(child: Text('Hello')),
                  Center(child: Text('Hello')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
