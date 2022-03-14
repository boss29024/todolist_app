import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/models/todo.dart';
import 'package:to_do_list/widgets/dateTimePick.dart';
import 'package:to_do_list/widgets/AllTextCard.dart';

import '../controllers/todo.controller.dart';

class ReminderPage extends StatefulWidget {
  ReminderPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
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
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: (heightDevice / 100) * 35,
              width: widthDevice,
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: (heightDevice / 100) * 10,
                              width: widthDevice,
                              child: TextField(
                                decoration: const InputDecoration(
                                  hintText: 'ชื่อเรื่อง',
                                ),
                                controller: headerTextController,
                              ),
                            ),
                            Container(
                              height: (heightDevice / 100) * 10,
                              width: widthDevice,
                              child: TextField(
                                decoration: const InputDecoration(
                                  hintText: 'โน้ต',
                                ),
                                controller: noteTextController,
                              ),
                            ),
                          ],
                        )),
                  ]),
            ),
          ),
          InkWell(
              child: Row(
                children: [
                  AllTextCard(
                      icon: Icons.today,
                      nameDateTime:
                          'วันที่ ${date.day} / ${date.month} / ${date.year}'),
                ],
              ),
              onTap: _pickDate),
          InkWell(
            child: Row(
              children: [
                AllTextCard(
                    icon: Icons.access_time_rounded,
                    nameDateTime: 'เวลา ${time.hour} นาที ${time.minute}'),
              ],
            ),
            onTap: _pickTime,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/allheadlist');
            },
            child: const ListTile(
              title: Text('ลิสต์'),
              enabled: false,
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text('เพิ่ม'),
                  onPressed: () {
                    Todo todo = Todo(headerTextController.text,
                        noteTextController.text, '', date, time);
                    todoController.addTodo(todo);
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
      ),
    );
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
