import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/constants.dart';

import 'package:spotify_clone/ui/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: grey,
        scaffoldBackgroundColor: Color(0xFF121212),
      ),
      darkTheme: ThemeData.dark(),
      home: LandingPage(),
    );
  }
}
