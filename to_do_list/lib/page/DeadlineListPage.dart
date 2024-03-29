import 'package:flutter/material.dart';
import 'package:to_do_list/models/todo.dart';
import 'package:to_do_list/page/EditPage.dart';
import 'package:to_do_list/widgets/listWidget.dart';
import 'package:get/get.dart';

import '../controllers/todo.controller.dart';

class DeadlineListPage extends StatefulWidget {
  DeadlineListPage({Key? key}) : super(key: key);

  @override
  State<DeadlineListPage> createState() => _DeadlineListPageState();
}

class _DeadlineListPageState extends State<DeadlineListPage> {
  TodoController todoController = Get.find();
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('กำหนดเวลา'),
        backgroundColor: Colors.red,
      ),
      body: Container(
          child: Obx(() => ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_buildContext, index) {
                if (todoController.todos[index].time != null) {
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
                    onEdit: () {
                      setState(() {
                        showModalBottomSheet<void>(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.all(16),
                              height: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    'แก้ไขเตือนความจำ',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  EditPage(indexEdit: index),
                                ],
                              ),
                            );
                          },
                        );
                      });
                    },
                  );
                } else {
                  if (todoController.todos[index].time == null) {
                    return Container(
                      alignment: Alignment.center,
                      height: heightDevice,
                      width: widthDevice,
                      child: Text(
                        'ไม่มีเตือนความจำ',
                        style: TextStyle(fontSize: 24, color: Colors.grey),
                      ),
                    );
                  }
                }
                return Container();
              }))),
    );
  }
}
