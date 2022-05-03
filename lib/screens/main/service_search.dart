// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:admaya/models/search_list.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceSearch extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.clear,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: FaIcon(
        FontAwesomeIcons.arrowLeft,
        size: 20,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.work),
          addVerticalSpace(48),
          Text(
            query,
            style: TextStyle(
              fontFamily: 'Bold',
              fontSize: 64,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final porpularServices = serviceslist;
    return buildPorpularServices(porpularServices);
  }

  Widget buildPorpularServices(List<String> porpularServices) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.work),
          title: Text(
            porpularServices[index],
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1?.color,
              fontFamily: 'Regular',
            ),
          ),
        );
      },
      itemCount: porpularServices.length,
    );
  }
}
