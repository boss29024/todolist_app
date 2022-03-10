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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            title: Text('การเตือน'),
            enabled: false,
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              child: const Text('กลับ'),
              onPressed: () => Navigator.pop(context),
            ),
          )
        ],
      ),
    );
  }
}
