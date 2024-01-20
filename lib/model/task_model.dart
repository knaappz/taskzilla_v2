import 'package:flutter/cupertino.dart';

class TaskField {
  static const createTime = 'createTime';
}

class Task {
  DateTime createTime;
  String taskName;
  String taskDesc;
  bool isDone;

  Task({
    required this.createTime,
    required this.taskName,
    this.taskDesc = '',
    this.isDone = false,
  });
}
