import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/todo.dart';

class TodoController extends GetxController {
  GetStorage box = GetStorage();
  var todos = <Todo>[].obs;
  var isLoading = false.obs;
  var errorMsg = "".obs;

  @override
  void onInit() {
    super.onInit();
    var todosRaw = box.read('todos');
    if (todosRaw != null) {
      var json = jsonDecode(todosRaw.toString());
      List<Todo> todoList =
          List<Todo>.from(json.map((model) => Todo.fromJson(model))).toList();
      todos.value = todoList;
    }
    ever(
      todos,
      (List<Todo> value) {
        var jsonString = jsonEncode(value);
        box.write('todos', jsonString);
      },
    );
  }

  void addTodo(Todo todo) {
    todos.value = [...todos, todo];
  }

  void editTodo(int index, Todo todo) {
    todos.value = [
      ...todos.sublist(0, index),
      todo,
      ...todos.sublist(index + 1)
    ];
  }

  void deleteTodo(int index, Todo todo) {
    todos.remove(todo);
    todos.removeAt(index);
  }
}
