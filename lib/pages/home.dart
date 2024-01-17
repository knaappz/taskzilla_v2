// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:taskzilla/buttons/newbtn.dart';

class MyColors {
  static const Color appbar = Color.fromARGB(255, 26, 26, 26);
  static const Color navbar = Color.fromARGB(255, 255, 255, 255);
  static const Color navbtn = Color.fromARGB(255, 255, 217, 134);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orange,
        height: 60,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.check,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.warning_rounded,
            size: 30,
            color: Colors.black,
          )
        ],
      ),
      backgroundColor: MyColors.appbar,
      floatingActionButton: AddBTN(onPressed: () {}),
    );
  }
}
