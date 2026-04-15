import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.blueAccent),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.pinkAccent,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Roboto',
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.pinkAccent),
    ),
  );
}