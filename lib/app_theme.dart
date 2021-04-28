import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    fontFamily: "BasisGrotesquePro",
    primaryColor: Colors.white,
    backgroundColor: Color.fromRGBO(39, 17, 96, 1),
    accentColor: Color.fromRGBO(255,193,117, 1),
    colorScheme: ColorScheme.light(
      onPrimary: Colors.black
    )
  );
}
