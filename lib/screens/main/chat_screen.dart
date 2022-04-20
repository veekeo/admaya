// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Chat Screen',
          style: TextStyle(color: Theme.of(context).colorScheme.outline),
        ),
      ),
    );
  }
}
