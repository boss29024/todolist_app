import 'package:flutter/material.dart';
import 'package:to_do_list/page/HomePage.dart';
import 'package:to_do_list/page/ReminderPage.dart';
import 'package:to_do_list/page/formListPage.dart';

class HomeStack extends StatefulWidget {
  const HomeStack({Key? key}) : super(key: key);

  @override
  State<HomeStack> createState() => _HomeStackState();
}

class _HomeStackState extends State<HomeStack> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'homestack/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'homestack/home':
            builder = (BuildContext _) => HomePage();
            break;
          case 'homestack/reminder':
            builder = (BuildContext _) => ReminderPage();
            break;
          case 'homestack/formList':
            builder = (BuildContext _) => FormListPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
