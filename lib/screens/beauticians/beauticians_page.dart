// @dart=2.9
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:admaya/constants.dart';
import 'package:admaya/models/beauticians/beautician_tabs.dart';

import 'package:admaya/screens/beauticians/beauticians_services.dart';
import 'package:admaya/screens/beauticians/custom_page_header.dart';
import 'package:admaya/screens/beauticians/details_screen.dart';
import 'package:admaya/screens/beauticians/portfolio/portfolio_screen.dart';
import 'package:admaya/screens/beauticians/reviews/reviews_screen.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class BeauticiansPageScreen extends StatefulWidget {
  final String headerImage;
  final String name;
  final String address;
  final String email;
  final String phoneNumber;
  final Map<String, String> services;
  final List<String> portfolio;

  BeauticiansPageScreen({
    this.headerImage,
    this.name,
    this.address,
    this.services,
    this.portfolio,
    this.email,
    this.phoneNumber,
  });
  @override
  State<BeauticiansPageScreen> createState() => _BeauticiansPageScreenState();
}

class _BeauticiansPageScreenState extends State<BeauticiansPageScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: beauticianTabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomPageHeader(
                maxExtent: 250,
                coverImage: widget.headerImage,
                name: widget.name,
                address: widget.address,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 15,
                            ),
                            addHorizontalSpace(3),
                            Text(
                              widget.address,
                              style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.bodyText1.color,
                                fontFamily: 'Regular',
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        addVerticalSpace(10),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              size: 15,
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .color
                                  .withOpacity(0.5),
                            ),
                            addHorizontalSpace(3),
                            Text(
                              widget.email,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color
                                    .withOpacity(0.5),
                                fontFamily: 'Regular',
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Message',
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
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelStyle: TextStyle(fontFamily: 'Medium', fontSize: 10),
                    controller: _tabController,
                    labelColor: Theme.of(context).textTheme.bodyText1?.color,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: kPrimaryColor,
                    indicatorWeight: 2,
                    tabs: [
                      Tab(text: beauticianTabs[0]),
                      Tab(text: beauticianTabs[1]),
                      Tab(text: beauticianTabs[2]),
                      Tab(text: beauticianTabs[3]),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: addDividerWithPadding(0),
            ),
          ];
        },
        body: Container(
          child: TabBarView(
            controller: _tabController,
            children: [
              Services(
                services: widget.services,
              ),
              ReviewsScreen(),
              PortfolioScreen(portfolio: widget.portfolio),
              DetailsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
