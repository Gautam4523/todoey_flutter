import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task.data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newAddTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
                fontSize: 50,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                // enabledBorder: UnderlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.blue, // Color of the underline
                //     width: 10.0, // Thickness of the underline
                //   ),
                // ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors
                        .blueAccent, // Color of the underline when focused
                    width: 3.0, // Thickness of the underline when focused
                  ),
                ),
              ),
              onChanged: (newTask) {
                newAddTask = newTask;
              },
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newAddTask!);
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 200,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
