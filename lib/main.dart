import 'package:flutter/material.dart';
import 'Screens/tasks-screens.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskdata.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreens(),
      ),
    );
  }
}
