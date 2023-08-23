import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  List<Task>? taskList = [];

  TaskList({this.taskList});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList!.length,
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.taskList![index].name,
          isChecked: widget.taskList![index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.taskList![index].toggleDone();
            });
          },
        );
      },
    );
  }
}
