import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/screens/activity_page.dart';
import 'package:instagram_clone/ui/screens/add_posts_page.dart';
import 'package:instagram_clone/ui/screens/home_page.dart';
import 'package:instagram_clone/ui/screens/profile_page.dart';
import 'package:instagram_clone/ui/screens/search_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Widget child = HomePage();
    switch (_index) {
      case 0:
        child = HomePage();
        print("homepage");
        break;
      case 1:
        child = SearchPage();
        print("search");
        break;
      case 2:
        child = AddPostsPage();
        print("add posts");
        break;
      case 3:
        child = ActivityPage();
        print("activity");
        break;
      case 4:
        child = ProfilePage();
        print("profile");
        break;
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        iconSize: 30,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _index != 0
                ? Icon(
                    Icons.home_outlined,
                  )
                : Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _index != 1
                ? Icon(
                    Icons.search_outlined,
                  )
                : Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _index != 2
                ? Icon(
                    Icons.add_box_outlined,
                  )
                : Icon(Icons.add_box),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _index != 3
                ? Icon(
                    Icons.favorite_outline,
                  )
                : Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _index != 4
                ? Icon(
                    Icons.account_circle_outlined,
                  )
                : Icon(Icons.account_circle),
            label: "",
          ),
        ],
      ),
    );
  }
}
