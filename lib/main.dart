
import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/views/deserts.dart';
import 'package:project/views/home_page.dart';
import 'package:project/views/login_page.dart';
import 'package:project/views/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = true;
  ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark
  );
  ThemeData lightTheme = ThemeData(
    splashColor: Colors.white,
    fontFamily: AppConstants.customFont,
    appBarTheme: AppBarTheme(color: Color(0xff92BA92)),
  );
  void changeTheme(){
    setState(() {
      isDark = isDark ? false:true;
    });

    print(isDark);
  }
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? darkTheme:lightTheme,
        initialRoute: '/',
        routes: {
          '/login': (context) => LoginPage(),
          '/': (context) => HomePage(),
          '/deserts': (context) => Deserts(),
          '/settings': (context) => Settings(changeTheme: changeTheme,),

          // '/settings': (context) => SettingsPage();
        });
  }
}
