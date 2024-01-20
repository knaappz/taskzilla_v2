// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:taskzilla/buttons/newbtn.dart';
import 'package:taskzilla/pages/completed.dart';
import 'package:taskzilla/pages/homepage.dart';
import 'package:taskzilla/pages/important.dart';
import 'package:taskzilla/tiles/task_creator.dart';

class MainSite extends StatefulWidget {
  const MainSite({Key? key}) : super(key: key);

  @override
  State<MainSite> createState() => _MainSiteState();
}

class MyColors {
  static const Color bg = Color.fromARGB(255, 34, 33, 33);
  static const Color bgappbar = Color.fromARGB(255, 48, 47, 47);
  static const Color bgnav = Colors.white;
  static const Color text = Colors.white;
}

class _MainSiteState extends State<MainSite> {
  int selectedIndex = 0;

  void createNewTask() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return TaskCreator();
        });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = [HomePage(), CompletedPage(), ImportantPage()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.bgappbar,
        title: Text(
          'TASKZILLA',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'LondrinaSolid',
              fontSize: 37,
              fontWeight: FontWeight.w300),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: AddBTN(
        onPressed: createNewTask,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: MyColors.bgnav,
          unselectedItemColor: MyColors.bg,
          selectedItemColor: Colors.orange,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
                selectedIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.check), label: 'Completed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.warning_rounded), label: 'Important'),
          ]),
      body: tabs[selectedIndex],
    );
  }
}
