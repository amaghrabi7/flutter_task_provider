import 'package:flutter/material.dart';
import 'package:task_provider/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(text: 'create provider class', isComplete: true),
    TaskModel(text: 'setup provider', isComplete: false),
    TaskModel(text: 'read and watch variables', isComplete: false),
  ];

  void addTask(String task) {
    TaskModel model = TaskModel(text: task, isComplete: false);
    tasks.add(model);
    notifyListeners();
  }

  void changeTaskStutsByIndex(int index) {
    tasks[index].isComplete = !tasks[index].isComplete;
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
