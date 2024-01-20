// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/model/task_model.dart';
import 'package:taskzilla/pages/mainsite.dart';
import 'package:taskzilla/tiles/task_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: TaskWidget(
          task: Task(createTime: DateTime.now(), taskName: 'Kotek na płocie')),
    );
  }
}
