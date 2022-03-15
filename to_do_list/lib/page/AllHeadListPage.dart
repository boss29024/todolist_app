import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/widgets/listWidget.dart';

import '../controllers/todo.controller.dart';

class AllHeadListPage extends StatefulWidget {
  AllHeadListPage({Key? key}) : super(key: key);

  @override
  State<AllHeadListPage> createState() => _AllHeadListPageState();
}

class _AllHeadListPageState extends State<AllHeadListPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: Text('ลิสต์ทั้งหมด'),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Obx(() => ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_buildContext, index) {
                return CheckboxListTile(
                    title: Text('การเตือน'),
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    });
              })),
        ));
  }
}
