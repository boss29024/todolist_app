import 'package:flutter/material.dart';

class AllHeadListPage extends StatefulWidget {
  AllHeadListPage({Key? key}) : super(key: key);

  @override
  State<AllHeadListPage> createState() => _AllHeadListPageState();
}

class _AllHeadListPageState extends State<AllHeadListPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ลิสต์ทั้งหมด'),
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          CheckboxListTile(
              title: Text('การเตือน'),
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value!;
                });
              })
        ],
      ),
    );
  }
}
