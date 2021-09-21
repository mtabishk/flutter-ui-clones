import 'package:flutter/material.dart';
import 'package:youtube_app_clone/ui/home.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Widget child = MyHomePage();
    switch (_index) {
      case 0:
        child = MyHomePage();
        print("homepage");
        break;
      case 1:
        child = Container();
        print("search");
        break;
      case 2:
        child = Container();
        print("add posts");
        break;
      case 3:
        child = Container();
        print("activity");
        break;
      case 4:
        child = Container();
        print("profile");
        break;
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        iconSize: 24,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
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
                    Icons.play_circle_outlined,
                  )
                : Icon(Icons.play_circle_fill),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: _index != 2
                ? Icon(
                    Icons.add_circle_outline_outlined,
                  )
                : Icon(Icons.add_circle),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _index != 3
                ? Icon(
                    Icons.smart_display_outlined,
                  )
                : Icon(Icons.smart_display),
            label: "Subscription",
          ),
          BottomNavigationBarItem(
            icon: _index != 4
                ? Icon(
                    Icons.video_library_outlined,
                  )
                : Icon(Icons.video_library),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
