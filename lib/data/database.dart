import 'package:hive/hive.dart';

class ToDODatabase {
  List toDoTask = [];

  // reference the hive box
  final _myHiveBox = Hive.box('myHiveBox');
  // runs this method if this is the 1st time opening the app
  void createInitialData() {
    toDoTask = [];
  }

  // load data from the database
  void loadData() {
    toDoTask = _myHiveBox.get("TODOTASK");
  }

  // update the database
  void updateDatabase() {
    _myHiveBox.put("TODOTASK", toDoTask);
  }
}
