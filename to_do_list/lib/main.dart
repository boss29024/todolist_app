import 'package:flutter/material.dart';
import 'package:to_do_list/page/HomePage.dart';
import 'package:to_do_list/page/ReminderPage.dart';
import 'package:to_do_list/page/formListPage.dart';
import 'package:to_do_list/widgets/listPageWidget.dart';

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
        '/listpage': (context) => ListPage(),
      },
    );
  }
}
