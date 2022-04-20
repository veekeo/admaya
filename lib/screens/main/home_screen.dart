// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:admaya/components/home/category_container.dart';
import 'package:admaya/components/home/current_location_container.dart';
import 'package:admaya/components/home/profile_photo.dart';
import 'package:admaya/models/category.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CurrentLocationContainer(),
                  ProfilePhoto(),
                ],
              ),
              addVerticalSpace(20),
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
              addVerticalSpace(20),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 9,
                  crossAxisCount: 3,
                  children: [
                    CategoryContainer(
                      title: categories[0].title,
                      icon: categories[0].icon,
                      onTap: () {},
                    ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
