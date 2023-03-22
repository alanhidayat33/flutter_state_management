import 'package:flutter/material.dart';
import 'package:flutter_state_management/main_screen_percobaan2.dart';
import 'package:flutter_state_management/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}
