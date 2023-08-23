import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool? isChecked = false;
  String? title = '';
  void Function(dynamic)? checkboxCallback = (dynamic) {};
  void Function()? holdCallback = () {};

  TaskTile(
      {this.isChecked, this.title, this.checkboxCallback, this.holdCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title!,
        style: TextStyle(
          decoration:
              isChecked! ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: holdCallback,
    );
  }
}
