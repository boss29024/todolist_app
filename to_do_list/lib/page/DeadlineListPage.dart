import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';
import 'package:get/get.dart';

import '../controllers/todo.controller.dart';

class DeadlineListPage extends StatefulWidget {
  DeadlineListPage({Key? key}) : super(key: key);

  @override
  State<DeadlineListPage> createState() => _DeadlineListPageState();
}

class _DeadlineListPageState extends State<DeadlineListPage> {
  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('กำหนดเวลา'),
        backgroundColor: Colors.red,
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
