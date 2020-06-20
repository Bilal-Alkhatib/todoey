import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function LongPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback , this.LongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback),
    );
  }
}
