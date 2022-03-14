import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';

class MyListPage extends StatefulWidget {
  MyListPage({Key? key}) : super(key: key);

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('การเตือน'),
      ),
      body: Container(
          child: Column(
        children: [
          ListWidget(
            headTitle: 'กินเลี้ยง',
            detailTitle: 'ร้านชาบู',
            date: '10 / 30 / 2022',
            time: '16.00',
          )
        ],
      )),
    );
  }
}
