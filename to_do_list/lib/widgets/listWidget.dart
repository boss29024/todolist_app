import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget(
      {Key? key,
      this.headTitle = '',
      this.detailTitle = '',
      this.date = '',
      this.time = ''})
      : super(key: key);

  final String headTitle;
  final String detailTitle;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(headTitle),
        subtitle: Text(detailTitle),
        children: <Widget>[
          ListTile(
            title: Text('วันที่ $date'),
          ),
          ListTile(title: Text('เวลา $time')),
          ListTile(
            title: ElevatedButton(
              onPressed: () {},
              child: Text('ทำเสร็จแล้ว'),
            ),
          )
        ]);
  }
}
