import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/listWidget.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late final String headBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headBar),
      ),
      body: Container(
          child: Column(
        children: [ListWidget()],
      )),
    );
  }
}
