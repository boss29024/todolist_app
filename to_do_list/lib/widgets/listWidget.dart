import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/models/todo.dart';
import 'package:to_do_list/page/EditPage.dart';

import '../controllers/todo.controller.dart';

class ListWidget extends StatefulWidget {
  final String headTitle;
  final String detailTitle;
  final String date;
  final String time;
  final bool isCheck;
  final Function onComplete;
  final Function onDelete;
  final Function onEdit;

  const ListWidget({
    Key? key,
    required this.headTitle,
    required this.detailTitle,
    required this.date,
    required this.time,
    required this.isCheck,
    required this.onComplete,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    TodoController todoController = Get.find();
    return ExpansionTile(
        title: Text(
          widget.headTitle,
        ),
        subtitle: Text(widget.detailTitle),
        children: <Widget>[
          ListTile(
            title: Text('วันที่ ${widget.date}'),
          ),
          ListTile(title: Text('เวลา ${widget.time}')),
          CheckboxListTile(
            value: widget.isCheck,
            onChanged: (bool? value) {
              widget.onComplete(value);
            },
            title: Text('ทำเสร็จแล้ว'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  widget.onEdit();
                },
                child: const Text('แก้ไข'),
              ),
              TextButton(
                onPressed: () {
                  widget.onDelete();
                },
                child: const Text('ลบ'),
              ),
            ],
          )
        ]);
  }
}
