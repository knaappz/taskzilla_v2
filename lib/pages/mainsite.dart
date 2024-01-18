// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/buttons/newbtn.dart';
import 'package:taskzilla/pages/completed.dart';
import 'package:taskzilla/pages/homepage.dart';
import 'package:taskzilla/pages/important.dart';
import 'package:taskzilla/pages/task_creator.dart';

class MainSite extends StatefulWidget {
  const MainSite({Key? key}) : super(key: key);

  @override
  State<MainSite> createState() => _MainSiteState();
}

class MyColors {
  static const Color bgpages = Color.fromARGB(255, 34, 33, 33);
}

class _MainSiteState extends State<MainSite> {
  final PageController _pageController = PageController(initialPage: 0);
  int _pageIndex = 0;

  void createNewTask() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return TaskCreator(
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.bgpages,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'TASKZILLA',
          style: TextStyle(
              fontFamily: 'LondrinaSolid',
              fontSize: 40,
              fontWeight: FontWeight.w300),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: AddBTN(
        onPressed: createNewTask,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          setState(
            () {
              _pageIndex = index;
            },
          );
        },
        children: _taskzillapages(),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 0, bottom: 15, right: 15, left: 15),
        child: BottomNavigationBar(
          elevation: 0,
          items: _buildFourItems(),
          onTap: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
          currentIndex: _pageIndex,
          fixedColor: Colors.orange,
        ),
      ),
    );
  }

  List<Widget> _taskzillapages() {
    return <Widget>[HomePage(), CompletedPage(), ImportantPage()];
  }

  List<BottomNavigationBarItem> _buildFourItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.check),
        label: 'Done',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.warning_rounded),
        label: 'Important',
      ),
    ];
  }
}
