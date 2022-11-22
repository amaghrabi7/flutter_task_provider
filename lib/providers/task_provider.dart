import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<String> tasks = [
    'create provider class',
    'setup provider in the widget tree for widgets to access it',
    'allow functions to read  and variables to watch provider '
  ];

  void addTask(String task) {
    tasks.add(task);
    notifyListeners();
  }
}
