import 'package:flutter/material.dart';
//import 'package:flutter_search_bar/flutter_search_bar.dart';

import 'package:to_do_list/widgets/cardAllSchedule.dart';
import 'package:to_do_list/widgets/listWidgets.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final widthDevice = MediaQuery.of(context).size.width;
    // final heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do list'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [CardAllSchedule(), CardAllSchedule()],
              ),
              Row(
                children: [CardAllSchedule(), CardAllSchedule()],
              ),
              Column(
                children: [ListWidgets()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
