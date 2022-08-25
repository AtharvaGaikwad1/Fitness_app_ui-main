// @dart=2.9

import 'package:fitness_ui_kit/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;

void main() {
  runApp(MaterialApp(
    theme: ThemeData(brightness: Brightness.dark),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    onGenerateRoute: router.generateRoute,
  ));
}
