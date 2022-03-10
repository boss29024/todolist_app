import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';

class ListToDayPage extends StatefulWidget {
  ListToDayPage({Key? key}) : super(key: key);

  @override
  State<ListToDayPage> createState() => _ListToDayPageState();
}

class _ListToDayPageState extends State<ListToDayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('วันนี้'),
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
