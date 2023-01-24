import 'package:assignment_one/home.dart';
import 'package:assignment_one/utils/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIM493 Mobile Programming',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: appBarColor,
      )),
      home: HomePage(),
    );
  }
}
