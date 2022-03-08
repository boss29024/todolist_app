import 'package:flutter/material.dart';
import 'package:to_do_list/page/ReminderPage.dart';

import 'package:to_do_list/widgets/cardAllSchedule.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  //final heightDevice = MediaQuery.of(context).size.height;

  _onItemTapped(int index) {
    setState(
      () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 800,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Modal BottomSheet'),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do list'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
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
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text('การเตือน'),
                    enabled: false,
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'เตือนความจำใหม่',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.addchart_sharp),
            label: 'เพิ่มลิสต์',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
