import 'package:flutter/material.dart';

class AllHeadListPage extends StatefulWidget {
  AllHeadListPage({Key? key}) : super(key: key);

  @override
  State<AllHeadListPage> createState() => _AllHeadListPageState();
}

class _AllHeadListPageState extends State<AllHeadListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Text('การเตือน'),
            enabled: false,
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
