// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:admaya/constants.dart';
import 'package:admaya/models/category.dart';
import 'package:admaya/screens/all.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 15,
                        color: Colors.grey,
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
                  indicatorWeight: 3,
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
                  Center(child: Text('Make up')),
                  Center(child: Text('Eyebrows & lashes')),
                  Center(child: Text('Hair styling')),
                  Center(child: Text('Nail art')),
                  Center(child: Text('Cosmetics')),
                  Center(child: Text('Skincare')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
