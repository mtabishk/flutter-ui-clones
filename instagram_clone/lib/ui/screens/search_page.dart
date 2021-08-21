import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            width: double.infinity,
            height: 32,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        elevation: 1.0,
      ),
      body: GridView(
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
            child: Image.asset('assets/images/search.jpg'),
          ),
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
            child: Image.asset('assets/images/search.jpg'),
          ),
        ],
      ),
    );
  }
}
