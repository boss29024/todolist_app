import 'package:flutter/material.dart';
import 'package:to_do_list/page/AllHeadListPage.dart';
import 'package:to_do_list/page/AllListPage.dart';
import 'package:to_do_list/page/DeadlineListPage.dart';
import 'package:to_do_list/page/FlagListPage.dart';
import 'package:to_do_list/page/HomePage.dart';
import 'package:to_do_list/page/ListToDayPage.dart';
import 'package:to_do_list/page/ListPage.dart';
import 'package:to_do_list/page/ReminderPage.dart';
import 'package:to_do_list/page/formListPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/formList': (context) => FormListPage(),
        '/reminder': (context) => ReminderPage(),
        '/listtoday': (context) => ListToDayPage(),
        '/flaglist': (context) => FlagListPage(),
        '/deadline': (context) => DeadlineListPage(),
        '/alllist': (context) => AllListPage(),
        '/listpage': (context) => ListPage(),
        '/allheadlist':(context) => AllHeadListPage(),
      },
    );
  }
}
