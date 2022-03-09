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
        child: Column(children: const [
          ListTile(
            title: Text('การเตือน'),
            enabled: false,
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ]),
      ),
    );
  }
}
