import 'package:flutter/material.dart';
import 'package:tododay_app/Widgets/Single_Task.dart';
import 'package:provider/provider.dart';
import 'package:tododay_app/models/task_data.dart';

// ignore: camel_case_types
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
            itemCount: TaskData.tasks.length,
            itemBuilder: (context, index) {
              return singlTask(
                  isChecked: TaskData.tasks[index].isDone,
                  taskTitle: TaskData.tasks[index].name,
                  chackboxChange: (newValue) {
                    TaskData.updateTask(TaskData.tasks[index]);
                  },
                  taskDelet: (){
                     TaskData.DeleteTask(TaskData.tasks[index]);
                  },
                  );
            });
      },
    );
  }
}
