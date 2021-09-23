import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}
