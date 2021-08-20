import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: SizedBox(
            width: 120,
            child: Image.asset('assets/icons/yt.png'),
          ),
        ),
        actions: [
          Icon(Icons.cast),
          SizedBox(width: 20),
          Icon(Icons.notifications_none),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.account_circle_outlined),
        ],
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 30,
                child: ListView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Text("hello"),
                      Text("hello"),
                      Text("hello"),
                      Text("hello"),
                      Text("hello"),
                    ]),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Text('Hello'),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
