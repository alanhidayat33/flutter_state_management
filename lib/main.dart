import 'package:flutter/material.dart';
import 'package:flutter_state_management/main_screen_percobaan1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      theme: ThemeData(),

      home: MainScreen(),
    );
  }
}
