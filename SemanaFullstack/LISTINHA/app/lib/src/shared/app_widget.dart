import 'package:flutter/material.dart';
import 'package:listinha/main.dart';
import 'package:listinha/src/home/home_page.dart';

import 'themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: dartTheme,
      home: HomePage(),
    );
  }
}