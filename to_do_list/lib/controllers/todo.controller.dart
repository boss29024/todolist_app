import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/todo.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  var isLoading = false.obs;
  var errorMsg = "".obs;

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
}
