// @dart=2.9
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, missing_return, avoid_print, unnecessary_null_comparison

import 'package:admaya/components/main_button.dart';
import 'package:admaya/constants.dart';
import 'package:admaya/screens/auth_screens/phone_number.dart';
import 'package:admaya/utils/helper.dart';
import 'package:flutter/material.dart';

class EmailSignUpScreen extends StatefulWidget {
  @override
  State<EmailSignUpScreen> createState() => _EmailSignUpScreenState();
}

class _EmailSignUpScreenState extends State<EmailSignUpScreen> {
  final Duration initialDelay = Duration(milliseconds: 300);
  final _formKey = GlobalKey<FormState>();

  // final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  bool isHidden = false;

  void toggleVisibility() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  validatePassword(value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        addVerticalSpace(35),
                        Text(
                          'Continue with Email.',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1?.color,
                            fontFamily: 'Medium',
                            fontSize: 20,
                          ),
                        ),
                        addVerticalSpace(40),
                        Text(
                          'Email address',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1?.color,
                            fontFamily: 'Medium',
                            fontSize: 15,
                          ),
                        ),
                        addVerticalSpace(10),
                        TextFormField(
                          autofocus: true,
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: kPrimaryColor,
                          cursorWidth: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, left: 14),
                              child: Icon(
                                Icons.email_outlined,
                                size: 25,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            hintText: 'Email address',
                            hintStyle: TextStyle(
                              fontFamily: 'Regular',
                              fontSize: 16,
                            ),
                            isDense: true,
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 0, minHeight: 0),
                            // enabledBorder: UnderlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: kPrimaryColor, width: 1),
                            // ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          validator: (value) => validateEmail(value),
                        ),
                        addVerticalSpace(15),
                        Text(
                          'Password',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.outline,
                            fontFamily: 'Medium',
                            fontSize: 15,
                          ),
                        ),
                        addVerticalSpace(10),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: 16,
                          ),
                          obscureText: isHidden,
                          cursorColor: kPrimaryColor,
                          cursorWidth: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, left: 14),
                              child: Icon(
                                Icons.lock,
                                size: 25,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'Regular',
                              fontSize: 16,
                            ),
                            isDense: true,
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 0, minHeight: 0),
                            // enabledBorder: UnderlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: kPrimaryColor, width: 1),
                            // ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          validator: (value) {
                            if (value != null && value.length < 6) {
                              return 'Enter min. 6 characters';
                            } else {
                              return null;
                            }
                          },
                        ),
                        addVerticalSpace(30),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  MainButton(
                    onPressed: () {
                      // final isValidForm = _formKey.currentState!.validate();
                      // if (isValidForm) {
                      //   try {
                      //     final newUser =
                      //         await _auth.createUserWithEmailAndPassword(
                      //             email: email, password: password);
                      //     if (newUser != null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PhoneNumberScreen();
                      }));
                      //     }
                      //   } catch (e) {
                      //     print(e);
                      //   }
                      // }
                    },
                    text: 'Sign up',
                    color: kPrimaryColor,
                    textColor: Colors.white,
                  ),
                  addVerticalSpace(10),
                  MainButton(
                    onPressed: () {
                      // final isValidForm = _formKey.currentState!.validate();
                      // if (isValidForm) {
                      //   try {
                      //     final newUser =
                      //         await _auth.createUserWithEmailAndPassword(
                      //             email: email, password: password);
                      //     if (newUser != null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PhoneNumberScreen();
                      }));
                      //     }
                      //   } catch (e) {
                      //     print(e);
                      //   }
                      // }
                    },
                    text: 'Sign in',
                    color: Theme.of(context).colorScheme.outline,
                    textColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
