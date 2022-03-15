import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do_list/page/AllListPage.dart';
import 'package:to_do_list/page/DeadlineListPage.dart';
import 'package:to_do_list/page/CompleteListPage.dart';
import 'package:to_do_list/page/HomePage.dart';
import 'package:to_do_list/page/NewListPage.dart';
import 'package:to_do_list/page/ToDayPage.dart';
import 'package:to_do_list/page/ReminderPage.dart';

import 'controllers/todo.controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await GetStorage.init();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final todoController = Get.put(TodoController(), permanent: true);

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
        '/newList': (context) => NewListPage(),
        '/reminder': (context) => ReminderPage(),
        '/today': (context) => ToDayPage(),
        '/complete': (context) => CompleteListPage(),
        '/deadline': (context) => DeadlineListPage(),
        '/alllist': (context) => AllListPage(),
      },
    );
  }
}