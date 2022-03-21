import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/models/todo.dart';
import 'package:to_do_list/page/EditPage.dart';
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
                                  'เตือนความจำใหม่',
                                  style: TextStyle(fontSize: 24),
                                ),
                                EditPage(),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                );
              }))),
    );
  }
}
