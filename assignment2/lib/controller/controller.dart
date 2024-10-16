import 'package:get/get.dart';

class Task {
  String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});
}

class TaskController extends GetxController {
  // List of tasks, marked as observable
  var tasks = <Task>[].obs;

  // Function to add a new task
  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  // Function to mark a task as complete
  void toggleTaskStatus(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    tasks.refresh();
  }
}