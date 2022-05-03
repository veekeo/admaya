// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:admaya/constants.dart';
import 'package:admaya/models/beauticians/beautician_tabs.dart';

import 'package:admaya/screens/beauticians/custom_page_header.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class BeauticiansPageScreen extends StatefulWidget {
  final String headerImage;
  final String name;
  final String address;

  BeauticiansPageScreen({
    required this.headerImage,
    required this.name,
    required this.address,
  });
  @override
  State<BeauticiansPageScreen> createState() => _BeauticiansPageScreenState();
}

class _BeauticiansPageScreenState extends State<BeauticiansPageScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: beauticianTabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: CustomPageHeader(
              minExtent: 150,
              maxExtent: 250,
              coverImage: widget.headerImage,
              name: widget.name,
              address: widget.address,
            ),
          ),
          SliverToBoxAdapter(
            child: addVerticalSpace(6),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelStyle: TextStyle(fontFamily: 'Light', fontSize: 12),
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
            child: Divider(
              color: Theme.of(context).cardTheme.color,
              height: 1,
              thickness: 1.5,
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              child: SizedBox(
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(child: Text('Services')),
                    Center(child: Text('Reviews')),
                    Center(child: Text('Portfolio')),
                    Center(child: Text('Details')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
