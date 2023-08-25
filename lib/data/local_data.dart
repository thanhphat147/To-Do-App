import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference my box
  final _boxData = Hive.box('myBoxData');

  //create initial data, running method if this is the first time ever open the app
  void createInitialData() {
    //list to-do
    toDoList = [
      ["Do Exercise", false],
      ["Eat breakfast", false],
    ];
  }

  //load the data from hive database
  void loadData() {
    toDoList = _boxData.get("TODOLIST");
  }

  //update data
  void updateDatabase() {
    _boxData.put("TODOLIST", toDoList);
  }
}
