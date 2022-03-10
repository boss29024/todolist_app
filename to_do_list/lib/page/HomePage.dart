import 'package:flutter/material.dart';
import 'package:to_do_list/page/FormListPage.dart';
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
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(5),
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
                      CardAllSchedule(icon: Icons.today, headcard: 'วันนี้'),
                      CardAllSchedule(
                          icon: Icons.calendar_month, headcard: 'กำหนดเวลา')
                    ],
                  ),
                  Row(
                    children: [
                      CardAllSchedule(icon: Icons.inbox, headcard: 'ทั้งหมด'),
                      CardAllSchedule(icon: Icons.flag, headcard: 'ติดธงอยู่')
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ลิสต์ของฉัน',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: (heightDevice / 100) * 1),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, '/listpage');
                          },
                          child: const ListTile(
                            title: Text('การเตือน'),
                            enabled: false,
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        )
                      ],
                    ),
                  ),
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
