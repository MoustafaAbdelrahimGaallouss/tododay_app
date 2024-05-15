import 'package:flutter/material.dart';

class singlTask extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  
  final Function(bool?) chackboxChange;
  final Function() taskDelet;
  singlTask(
      {required this.isChecked,
      required this.taskTitle,
      required this.chackboxChange,
     required this.taskDelet
      });
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
      
        trailing: Checkbox(
          activeColor: Colors.blue[900],
          value: isChecked,
          onChanged: chackboxChange,
        ),
        onLongPress:taskDelet ,
        );
  }
}
