// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:flutter_search_bar/flutter_search_bar.dart';

import 'package:to_do_list/widgets/cardAllSchedule.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late SearchBar searchBar;

  // AppBar buildAppBar(BuildContext context) {
  //   return AppBar(
  //       title: const Text('To do list'),
  //       actions: [searchBar.getSearchAction(context)]);
  // }

  // _HomePageState() {
  //   searchBar = SearchBar(
  //       inBar: false,
  //       setState: setState,
  //       onSubmitted: print,
  //       buildDefaultAppBar: buildAppBar);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do list'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      //appBar: searchBar.build(context),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SafeArea(
            child: Column(
              children: const [
                CardAllSchedule(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
