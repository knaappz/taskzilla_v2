// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';

class TaskFormWidget extends StatelessWidget {
  final String taskName;
  final String taskDesc;
  final ValueChanged<String> onChangeName;
  final ValueChanged<String> onChangeDesc;
  final VoidCallback onSaveTask;

  const TaskFormWidget({
    super.key,
    required this.taskName,
    required this.taskDesc,
    required this.onChangeName,
    required this.onChangeDesc,
    required this.onSaveTask,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTile(),
          SizedBox(
            height: 8,
          ),
          buildDesc(),
          SizedBox(
            height: 10,
          ),
          buildBtnSave(),
          // buildBtnCancel()
        ],
      ));

  Widget buildTile() => TextFormField(
        maxLines: 1,
        initialValue: taskName,
        onChanged: onChangeName,
        validator: (taskName) {
          if (taskName!.isEmpty) {
            return 'Task needs name';
          }
          return null;
        },
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelStyle: TextStyle(color: MyColors.bgappbar),
            labelText: 'Task name...'),
      );

  Widget buildDesc() => TextFormField(
        maxLines: 3,
        initialValue: taskDesc,
        onChanged: onChangeDesc,
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelStyle: TextStyle(color: MyColors.bgappbar),
            labelText: 'Task description...'),
      );

  Widget buildBtnSave() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onSaveTask,
          child: Text('Save'),
        ),
      );

  // Widget buildBtnCancel() =>
  //     ElevatedButton(onPressed: onCancelTask, child: Text('Cancel'));
}
