// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:admaya/constants.dart';
import 'package:admaya/screens/main/discover_screen.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: ServiceSearch(),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 41, 41, 41),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/icons/search.png'),
                  ),
                ),
              ),
              addVerticalSpace(10),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 30, 49),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/makeUp.png'),
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(5),
              Text(
                'Make up',
                style: TextStyle(
                  fontFamily: 'Light',
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color!
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 30, 49),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/nailArt.png'),
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(5),
              Text(
                'Nail art',
                style: TextStyle(
                  fontFamily: 'Light',
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color!
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 30, 49),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/eyeLashes.png'),
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(5),
              Text(
                'Eyebrows',
                style: TextStyle(
                  fontFamily: 'Light',
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color!
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 30, 49),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/cosmetics.png'),
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(5),
              Text(
                'cosmetics',
                style: TextStyle(
                  fontFamily: 'Light',
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color!
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 30, 49),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/hairStyling.png'),
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(5),
              Text(
                'Hair styling',
                style: TextStyle(
                  fontFamily: 'Light',
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color!
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kPrimaryColor,
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 30, 30, 49),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/skinCare.png'),
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(5),
              Text(
                'Skin care',
                style: TextStyle(
                  fontFamily: 'Light',
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color!
                      .withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
