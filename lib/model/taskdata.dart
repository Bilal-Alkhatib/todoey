import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {

	List<Task> _tasks = [
		Task(name: 'buyMilk'),
		Task(name: 'Develop your App '),
		Task(name: 'sey Hello '),
	];
	UnmodifiableListView<Task> get tasks {return UnmodifiableListView(_tasks);}

	int get taskCount {
		return _tasks.length;
	}
	
	void addNewTask ( String newTaskTitle ){
		final task = Task(name:newTaskTitle);
		_tasks.add(task);
		notifyListeners();
	}

	void updateTask (Task task){
		task.toggleDone();
		notifyListeners();
	}
	
	void deletTask (Task task ){
		_tasks.remove(task);
		notifyListeners();
	}
}