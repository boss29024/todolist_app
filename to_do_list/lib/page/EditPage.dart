import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/models/todo.dart';
import 'package:to_do_list/widgets/AllTextCard.dart';

import '../controllers/todo.controller.dart';

class EditPage extends StatefulWidget {
  final int indexEdit;
  EditPage({
    Key? key,
    required this.indexEdit,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late DateTime date;
  late DateTime time;
  TextEditingController headerTextController = TextEditingController();
  TextEditingController noteTextController = TextEditingController();

  TodoController todoController = Get.find();

  @override
  void initState() {
    super.initState();
    date = DateTime.now();
    time = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: (heightDevice / 100) * 10,
              width: widthDevice,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ชื่อเรื่อง',
                ),
                controller: headerTextController,
              ),
            ),
            SizedBox(
              height: (heightDevice / 100) * 3,
            ),
            Container(
              height: (heightDevice / 100) * 10,
              width: widthDevice,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'โน้ต',
                ),
                controller: noteTextController,
              ),
            ),
            SizedBox(
              height: (heightDevice / 100) * 3,
            ),
            Container(
              width: widthDevice,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      child: Row(
                        children: [
                          AllTextCard(
                              icon: Icons.today,
                              stringText:
                                  'วันที่ ${date.day} / ${date.month} / ${date.year}'),
                        ],
                      ),
                      onTap: _pickDate),
                  SizedBox(
                    height: (heightDevice / 100) * 2,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        AllTextCard(
                            icon: Icons.access_time_rounded,
                            stringText: 'เวลา ${time.hour} : ${time.minute}'),
                      ],
                    ),
                    onTap: _pickTime,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: const Text('แก้ไข'),
                    onPressed: () {
                      Todo todo = Todo(
                          headerTextController.text,
                          noteTextController.text,
                          date,
                          time,
                          todoController.todos[widget.indexEdit].isComplete);
                      todoController.editTodo(widget.indexEdit, todo);
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: const Text('ยกเลิก'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  _pickDate() async {
    DateTime? dateNow = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (dateNow != null) {
      setState(() {
        date = dateNow;
      });
    }
  }

  _pickTime() async {
    TimeOfDay? schedule = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (schedule != null) {
      setState(() {
        final now = new DateTime.now();
        time = new DateTime(
            now.year, now.month, now.day, schedule.hour, schedule.minute);
      });
    }
  }
}
