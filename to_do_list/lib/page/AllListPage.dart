import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';

class AllListPage extends StatefulWidget {
  AllListPage({Key? key}) : super(key: key);

  @override
  State<AllListPage> createState() => _AllListPageState();
}

class _AllListPageState extends State<AllListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ทั้งหมด'),
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
