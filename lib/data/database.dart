import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Do Exercise', false],
      ['Code an app', false],
    ];
  }

  void localData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDatabase() {}
}
