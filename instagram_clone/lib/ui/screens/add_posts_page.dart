import 'package:flutter/material.dart';

class AddPostsPage extends StatelessWidget {
  const AddPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.close),
        title: Text('New Post'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.blue,
              size: 28,
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
              ),
              GridView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                children: [
                  Container(
                    child: Image.asset('assets/images/search.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black.withOpacity(0.7),
        onPressed: () {},
        label: Row(
          children: [
            Text(
              'POST',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              ' STORY LIVE',
              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
