import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskdata.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Add Task ",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 38.0,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              TextField(
                onChanged: (newTask){
                  newTaskTitle = newTask;
                },
                textAlign: TextAlign.center,
                autofocus: true,
              ),
              FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context).addNewTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
