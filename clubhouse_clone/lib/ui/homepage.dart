import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.search, size: 28),
        actions: [
          Icon(Icons.email_outlined, size: 28),
          SizedBox(width: 32),
          Icon(Icons.calendar_today_outlined, size: 28),
          SizedBox(width: 32),
          Icon(Icons.notifications_outlined, size: 28),
          SizedBox(width: 32),
          Icon(Icons.account_circle_outlined, size: 28),
          SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
