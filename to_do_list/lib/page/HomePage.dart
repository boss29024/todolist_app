import 'package:flutter/material.dart';
import 'package:to_do_list/page/FormListPage.dart';
import 'package:to_do_list/page/MyListPage.dart';
import 'package:to_do_list/page/ReminderPage.dart';
// import 'package:to_do_list/page/ReminderPage.dart';

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

  Align buildButtomBotton(BuildContext context, double widthDevice) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  bottonIcons = BottonIcons.Add;
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
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
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        height: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'ลิสต์ใหม่',
                              style: TextStyle(fontSize: 24),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do list'),
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
                      InkWell(
                          child: CardAllSchedule(
                            icon: Icons.today,
                            headcard: 'วันนี้',
                            score: 1,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/today');
                          }),
                      InkWell(
                        child: CardAllSchedule(
                          icon: Icons.calendar_month,
                          headcard: 'กำหนดเวลา',
                          score: 1,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/deadline');
                        },
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: (() {
                            Navigator.pushNamed(context, '/alllist');
                          }),
                          child: CardAllSchedule(
                            icon: Icons.inbox,
                            headcard: 'ทั้งหมด',
                            score: 1,
                          )),
                      InkWell(
                        onTap: (() {
                          Navigator.pushNamed(context, '/flaglist');
                        }),
                        child: CardAllSchedule(
                            icon: Icons.flag, headcard: 'ติดธงอยู่'),
                      ),
                    ],
                  ),MyListPage()
                ],
              ),
            ),
          ),
          buildButtomBotton(context, widthDevice)
        ],
      ),
    );
  }
}
