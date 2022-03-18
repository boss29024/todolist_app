import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/models/todo.dart';
import 'package:to_do_list/widgets/listWidget.dart';

import '../controllers/todo.controller.dart';

class CompleteListPage extends StatefulWidget {
  CompleteListPage({Key? key}) : super(key: key);

  @override
  State<CompleteListPage> createState() => _CompleteListPageState();
}

class _CompleteListPageState extends State<CompleteListPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.find();

    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('ทำเสร็จแล้ว'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
          child: Obx(() => ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_buildContext, index) {
                if (value != todoController.todos[index].isComplete) {
                  return ListWidget(
                    headTitle: todoController.todos[index].header,
                    detailTitle: todoController.todos[index].note,
                    date:
                        '${todoController.todos[index].date.day} / ${todoController.todos[index].date.month} / ${todoController.todos[index].date.year}',
                    time:
                        '${todoController.todos[index].time.hour} : ${todoController.todos[index].time.minute}',
                    isCheck: todoController.todos[index].isComplete,
                    onComplete: (val) {
                      Todo todo = Todo(
                          todoController.todos[index].header,
                          todoController.todos[index].note,
                          todoController.todos[index].date,
                          todoController.todos[index].time,
                          val);
                      todoController.editTodo(index, todo);
                    },
                    onEdit: () {},
                    onDelete: () {
                      Todo todo = Todo(
                        todoController.todos[index].header,
                        todoController.todos[index].note,
                        todoController.todos[index].date,
                        todoController.todos[index].time,
                        todoController.todos[index].isComplete,
                      );
                      todoController.deleteTodo(index, todo);
                    },
                  );
                }
                return Container(
                  alignment: Alignment.center,
                  height: heightDevice,
                  width: widthDevice,
                  child: Text(
                    'ไม่มีเตือนความจำ',
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                );
              }))),
    );
  }
}
