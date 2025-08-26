import 'dart:io';

List<String> todoList = [];

void main() {
  while (true) {
    print("\n=== To-Do List Menu ===");
    print('1. Add Task');
    print('2. View All Tasks');
    print('3. Delete Task');
    print('4. Exit');
    
    stdout.write("Choose your option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addTask();
        break;
      case '2':
        viewTasks();
        break;
      case '3':
        deleteTask();
        break;
      case '4':
        print("Exiting the app...👏");
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}

/// Function to add a new task
void addTask() {
  stdout.write("Enter the task name: ");
  String? taskName = stdin.readLineSync();
  if (taskName != null && taskName.isNotEmpty) {
    todoList.add(taskName);
    print("Task added successfully.");
  } else {
    print("Task cannot be empty.");
  }
}

/// Function to view all tasks
void viewTasks() {
  print("\nYour tasks:");
  if (todoList.isEmpty) { 
    print("No tasks found.");
  } else {
    for (int i = 0; i < todoList.length; i++) {
      print("${i + 1}. ${todoList[i]}");
    }
  }
}

/// Function to delete a task
void deleteTask() {
  viewTasks();
  if (todoList.isEmpty) return;

  stdout.write("Enter task number to delete: ");
  String? userInput = stdin.readLineSync();
  int? taskNumber = int.tryParse(userInput ?? '');

  if (taskNumber == null) {
    print("Please enter a valid number.");
    return;
  }

  if (taskNumber > 0 && taskNumber <= todoList.length) {
    print('Deleted: ${todoList[taskNumber - 1]}');
    todoList.removeAt(taskNumber - 1);
  } else {
    print("Invalid task number.");
  }
}