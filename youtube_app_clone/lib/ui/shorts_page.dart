import 'package:flutter/material.dart';

class ShortsPage extends StatelessWidget {
  const ShortsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: null,
          ),
          SizedBox(
            width: 16.0,
          )
        ],
      ),
      body: LinearProgressIndicator(),
    );
  }
}
