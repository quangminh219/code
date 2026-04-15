import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'themes/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Settings',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Tự động đổi theme theo hệ thống
      home: HomePage(),
    );
  }
}