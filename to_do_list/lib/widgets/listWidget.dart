import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget(
      {Key? key,
      this.headTitle = '',
      this.detailTitle = '',
      this.date = 0,
      this.time = 0})
      : super(key: key);

  final String headTitle;
  final String detailTitle;
  final double date;
  final double time;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(headTitle),
        subtitle: Text(detailTitle),
        children: <Widget>[
          ListTile(title: Text('วันที่', textScaleFactor: date)),
          ListTile(title: Text('เวลา', textScaleFactor: time))
        ]);
  }
}
