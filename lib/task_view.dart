import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task.data.dart';
import 'task_tile.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          longPressCallBack: () {
            Provider.of<TaskData>(context, listen: false).deleteTask(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChange: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxOnChange: (newValue) {
            Provider.of<TaskData>(context, listen: false).updateTask(
                Provider.of<TaskData>(context, listen: false).tasks[index]);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
