import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ทั้งหมด'),
        ),
        body: Container(
          child: Column(children: [
            ExpansionTile(
                title: Text('เข้ากรุงเทพ'),
                subtitle: Text('กินสุกี้น้ำดำ'),
                children: <Widget>[
                  ListTile(title: Text('วันที่')),
                  ListTile(title: Text('เวลา'))
                ])
          ]),
        ));
  }
}
