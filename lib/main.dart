import 'package:flutter/material.dart';
import 'package:haggle_x/screens/done_screen.dart';
import 'package:haggle_x/screens/splash_screen.dart';
import 'package:haggle_x/screens/verify_screen.dart';

import 'app_theme.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
//      theme: ThemeData(
//          backgroundColor: Color.fromRGBO(39, 17, 96, 1),
////          backgroundColor: Color.fromRGBO(52, 31, 105, 1),
//          primaryColor: Color.fromRGBO(62, 42, 116, 1)),
////        primaryColor: Color.fromRGBO(115,98,161, 1)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return VerifyScreen();
    // return SignUpScreen();
    // return DoneScreen();
    // return LoginScreen();
    // return SplashScreen();
  }
}
