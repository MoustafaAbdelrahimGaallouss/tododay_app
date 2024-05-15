import 'package:flutter/material.dart';
import 'package:tododay_app/models/task.dart';

class TaskData extends ChangeNotifier {
List<Task> tasks = [
   
  ];
  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void DeleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}