import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/widgets/listWidget.dart';

import '../controllers/todo.controller.dart';

class AllListPage extends StatefulWidget {
  AllListPage({Key? key}) : super(key: key);

  @override
  State<AllListPage> createState() => _AllListPageState();
}

class _AllListPageState extends State<AllListPage> {
  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('ทั้งหมด'),
        backgroundColor: Colors.green,
      ),
      body: Container(
          child: Obx(() => ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_buildContext, index) {
                return ListWidget(
                  headTitle: todoController.todos[index].header,
                  detailTitle: todoController.todos[index].note,
                  date:
                      '${todoController.todos[index].date.day} / ${todoController.todos[index].date.month} / ${todoController.todos[index].date.year}',
                  time:
                      '${todoController.todos[index].time.hour} : ${todoController.todos[index].time.minute}',
                );
              }))),
    );
  }
}
