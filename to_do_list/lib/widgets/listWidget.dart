import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  final String headTitle;
  final String detailTitle;
  final String date;
  final String time;

  const ListWidget({
    Key? key,
    required this.headTitle,
    required this.detailTitle,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(
          widget.headTitle,
        ),
        subtitle: Text(widget.headTitle),
        children: <Widget>[
          ListTile(
            title: Text('วันที่ ${widget.date}'),
          ),
          ListTile(title: Text('เวลา ${widget.time}')),
          CheckboxListTile(
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value!;
              });
            },
            title: Text('ทำเสร็จแล้ว'),
          ),
        ]);
  }
}
