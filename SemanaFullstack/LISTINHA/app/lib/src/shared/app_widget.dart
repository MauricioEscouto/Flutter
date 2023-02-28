import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/main.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/home/edit_task_board_page.dart';
import 'package:listinha/src/home/home_page.dart';

import 'themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Modular.setInitialRoute('/home/');

    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: dartTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}