import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/home.dart';
import 'package:youtube_clone/ui/library_page.dart';
import 'package:youtube_clone/ui/shorts_page.dart';
import 'package:youtube_clone/ui/subscriptions_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  Widget child = MyHomePage();

  @override
  Widget build(BuildContext context) {
    switch (_index) {
      case 0:
        child = MyHomePage();
        print("homepage");
        break;
      case 1:
        child = ShortsPage();
        print("shorts");
        break;
      case 2:
        child = child;
        print("add");
        break;
      case 3:
        child = SubscriptionsPage();
        print("subscriptions");
        break;
      case 4:
        child = LibraryPage();
        print("library");
        break;
    }
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          BottomNavigationBar(
            onTap: (newIndex) => setState(() => _index = newIndex),
            currentIndex: _index,
            iconSize: 24,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
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
                icon: Opacity(opacity: 0),
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
          IconButton(
              iconSize: 38.0,
              icon: Icon(
                Icons.add_circle_outline_outlined,
              ),
              onPressed: () async {
                await _modalBottomSheetMenu();
              }),
        ],
      ),
    );
  }

  Future<void> _modalBottomSheetMenu() {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.grey[900],
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close)),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[700]),
                      child: Icon(Icons.video_call),
                    ),
                    title: Text("Create a Short"),
                    trailing: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Beta"),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[700]),
                      child: Icon(Icons.file_upload),
                    ),
                    title: Text("Upload a video"),
                  ),
                  ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[700]),
                      child: ImageIcon(
                        AssetImage('assets/icons/live.png'),
                      ),
                    ),
                    title: Text("Go live"),
                  ),
                ],
              ),
            ));
  }
}
