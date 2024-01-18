import 'package:flutter/material.dart';

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
     required this.onSaveTask
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        build(context)

      ],
    );
  }
}