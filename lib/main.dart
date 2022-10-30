
import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/views/deserts.dart';
import 'package:project/views/home_page.dart';
import 'package:project/views/login_page.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    fontFamily: AppConstants.customFont,
    appBarTheme: AppBarTheme(color: Color(0xff92BA92)),
  ),
    initialRoute: '/',
    routes: {
      '/login': (context) => LoginPage(),
      '/': (context) => HomePage(),
      '/deserts': (context) => Deserts(),
      // '/settings': (context) => SettingsPage();

    }),
);