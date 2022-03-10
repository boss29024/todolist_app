import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';

class DeadlineListPage extends StatefulWidget {
  DeadlineListPage({Key? key}) : super(key: key);

  @override
  State<DeadlineListPage> createState() => _DeadlineListPageState();
}

class _DeadlineListPageState extends State<DeadlineListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('กำหนดเวลา'),
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
