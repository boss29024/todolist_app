import 'package:flutter/material.dart';
import 'package:to_do_list/page/FormListPage.dart';
import 'package:to_do_list/page/ReminderPage.dart';

import 'package:to_do_list/widgets/cardAllSchedule.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum BottonIcons { Add, List }

class _HomePageState extends State<HomePage> {
  BottonIcons bottonIcons = BottonIcons.Add;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do list'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CardAllSchedule(icon: Icons.today, headname: 'วันนี้'),
                      CardAllSchedule(
                          icon: Icons.calendar_month, headname: 'กำหนดเวลา')
                    ],
                  ),
                  Row(
                    children: [
                      CardAllSchedule(icon: Icons.inbox, headname: 'ทั้งหมด'),
                      CardAllSchedule(icon: Icons.flag, headname: 'ติดธงอยู่')
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: const ListTile(
                          title: Text('การเตือน'),
                          enabled: false,
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bottonIcons = BottonIcons.Add;
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(5),
                                  height: 500,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ElevatedButton(
                                        child: const Text('Close'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                      ReminderPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: bottonIcons == BottonIcons.Add
                            ? Container(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, bottom: 8, top: 8),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('เตือนความจำ',
                                        style: TextStyle(color: Colors.blue)),
                                  ],
                                ),
                              )
                            : Icon(Icons.add)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bottonIcons = BottonIcons.List;
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(5),
                                  height: 500,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ElevatedButton(
                                        child: const Text('Close'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                      FormListPage(),
                                    ],
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: bottonIcons == BottonIcons.List
                            ? Container(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, bottom: 8, top: 8),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.list,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('เพิ่มลิสต์',
                                        style: TextStyle(color: Colors.blue)),
                                  ],
                                ),
                              )
                            : Icon(Icons.list)),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
