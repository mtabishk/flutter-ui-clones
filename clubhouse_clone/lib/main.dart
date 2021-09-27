import 'package:clubhouse_clone/constants.dart';
import 'package:clubhouse_clone/ui/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClubHouse',
      theme: ThemeData(
        primarySwatch: primaryColor,
        scaffoldBackgroundColor: const Color(0xFFF2EFE5),
      ),
      home: MyHomePage(),
    );
  }
}
