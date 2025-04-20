import 'package:get/get.dart';
import 'package:todo_getx/models/todo_models.dart';


class TodoController extends GetxController {
  var todoList = <TodoModel>[].obs;

  void addTodo(String title) {
    if (title.trim().isNotEmpty) {
      todoList.add(TodoModel(title: title));
    }
  }

  void toggleTodoStatus(int index) {
    var todo = todoList[index];
    todo.isDone = !todo.isDone;
    todoList[index] = todo; 
  }

  void deleteTodo(int index) {
    todoList.removeAt(index);
  }
}
