import 'package:flutter/material.dart';

class FlagListPage extends StatefulWidget {
  FlagListPage({Key? key}) : super(key: key);

  @override
  State<FlagListPage> createState() => _FlagListPageState();
}

class _FlagListPageState extends State<FlagListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ติดธงอยู่'),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text('ไม่มีเตือนความจำ')],
      )),
    );
  }
}
