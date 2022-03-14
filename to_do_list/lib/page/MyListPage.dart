import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/AllTextCard.dart';
import 'package:to_do_list/widgets/listWidget.dart';

class MyListPage extends StatefulWidget {
  MyListPage({Key? key}) : super(key: key);

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ลิสต์ของฉัน',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: (heightDevice / 100) * 1),
          InkWell(
            child: AllTextCard(nameDateTime: 'การเตือน'),
          )
        ],
      ),
    );
  }
}
