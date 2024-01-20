// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:taskzilla/model/task_model.dart';
import 'package:taskzilla/pages/mainsite.dart';

class TaskWidget extends StatelessWidget {
  final Task task;
  const TaskWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) => Slidable(
        //dokonczyc
        child: buildTask(context),
      );

  Widget buildTask(BuildContext context) => Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              checkColor: Colors.white,
              value: task.isDone,
              onChanged: (_) {},
            ),
            SizedBox(width: 20),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.taskName,
                  style: TextStyle(
                      color: MyColors.text,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                if (task.taskDesc.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(task.taskDesc),
                  )
              ],
            ))
          ],
        ),
      );
}
