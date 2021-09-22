import 'package:flutter/material.dart';
import 'package:youtube_app_clone/constants.dart';
import 'package:youtube_app_clone/ui/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
        primaryColorDark: Colors.white,
        primarySwatch: white,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
