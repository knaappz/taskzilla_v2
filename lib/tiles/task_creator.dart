// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';
import 'package:taskzilla/tiles/taskform.dart';

class TaskCreator extends StatefulWidget {
  const TaskCreator({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskCreator> createState() => _TaskCreatorState();
}

class _TaskCreatorState extends State<TaskCreator> {
  String taskName = '';
  String taskDesc = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 10,
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'NEW TASK!',
              style: TextStyle(
                  color: MyColors.bgappbar,
                  fontFamily: 'LondrinaSolid',
                  fontSize: 30,
                  fontWeight: FontWeight.w300),
            ),
            TaskFormWidget(
              onChangeName: (taskName) =>
                  setState(() => this.taskName = taskName),
              onChangeDesc: (taskDesc) =>
                  setState(() => this.taskDesc = taskDesc),
              onSaveTask: () {},
              taskDesc: '',
              taskName: '',
            ),
          ],
        ),
      ),
    );
  }
}
