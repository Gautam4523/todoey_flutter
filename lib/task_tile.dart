import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChange;
  String? taskTitle;
  Function(bool?) checkboxOnChange;
  Function() longPressCallBack;

  TaskTile(
      {required this.taskTitle,
      required this.checkboxOnChange,
      this.isChange = false,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        title: Text(
          taskTitle!,
          style: TextStyle(
              decoration: isChange ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.blueAccent,
            value: isChange,
            onChanged: checkboxOnChange));
  }
}
