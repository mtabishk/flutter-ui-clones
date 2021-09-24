import 'package:flutter/material.dart';
import 'package:spotify_app/ui/home_page.dart';
import 'package:spotify_app/ui/library_page.dart';
import 'package:spotify_app/ui/search_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  Widget child = HomePage();

  @override
  Widget build(BuildContext context) {
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
        child = LibraryPage();
        print("library");
        break;
    }
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          child,
          BottomNavigationBar(
            backgroundColor: Colors.black.withOpacity(0.8),
            elevation: 0,
            onTap: (newIndex) => setState(() => _index = newIndex),
            currentIndex: _index,
            iconSize: 24,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            items: [
              BottomNavigationBarItem(
                icon: _index != 0
                    ? Icon(
                        Icons.home_outlined,
                      )
                    : Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: _index != 1
                    ? Icon(
                        Icons.search_outlined,
                      )
                    : Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: _index != 2
                    ? Icon(
                        Icons.library_music_outlined,
                      )
                    : Icon(Icons.library_music),
                label: "Your Library",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
