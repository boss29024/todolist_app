import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';
import 'package:get/get.dart';
import '../controllers/todo.controller.dart';

class ListToDayPage extends StatefulWidget {
  ListToDayPage({Key? key}) : super(key: key);

  @override
  State<ListToDayPage> createState() => _ListToDayPageState();
}

class _ListToDayPageState extends State<ListToDayPage> {
  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('วันนี้'),
      ),
      body: Container(
          child: Obx(() => ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_buildContext, index) {
                return ListWidget(
                  headTitle: todoController.todos[index].header,
                  detailTitle: todoController.todos[index].note,
                  date: todoController.todos[index].date.toString(),
                  time: todoController.todos[index].time.toString(),
                );
              }))),
    );
  }
}
