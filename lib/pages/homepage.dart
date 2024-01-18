// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgpages,
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 400,
            child: Text(
              'Witaj w Taskzilla! \nW naszej apce możesz:',
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
