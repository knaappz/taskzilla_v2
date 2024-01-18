// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskzilla/pages/mainsite.dart';

class TaskCreator extends StatefulWidget {
  final VoidCallback onCancel;

  const TaskCreator({
    Key? key,
    required this.onCancel,
  }) : super(key: key);

  @override
  State<TaskCreator> createState() => _TaskCreatorState();
}

class _TaskCreatorState extends State<TaskCreator> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 6,
      backgroundColor: MyColors.bgpages,
      content: SizedBox(
        width: 300,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextField(),
            ElevatedButton(
              onPressed: widget.onCancel,
              child: Text('Wstecz'),
            ),
          ],
        ),
      ),
    );
  }
}
