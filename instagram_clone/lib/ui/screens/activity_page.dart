import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/custom_widgets/custom_activity_tile.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Activity',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
        ),
      ),
      body: ListView(
        children: [
          customActivityTile(
            imgPath: "assets/images/img3.jpg",
            title: Text(
              "Follow Requests",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Approve or ignore requests"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Today',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          customActivityTile(
            imgPath: "assets/images/img4.jpg",
            title: RichText(
              text: TextSpan(
                style: new TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "juicewrld999",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text:
                          " mentioned you in a comment: Congrats for your app launch"),
                ],
              ),
            ),
            subtitle: Text("20h"),
          ),
          customActivityTile(
            imgPath: "assets/images/img5.jpg",
            title: RichText(
              text: TextSpan(
                style: new TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "kyliejenner",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: " requested to follow you"),
                ],
              ),
            ),
            subtitle: Text("20h"),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "  Confirm  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "  Delete  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'This Week',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          customActivityTile(
            imgPath: "assets/images/img5.jpg",
            title: RichText(
              text: TextSpan(
                style: new TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "kyliejenner",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: " requested to follow you"),
                ],
              ),
            ),
            subtitle: Text("20h"),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "  Confirm  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "  Delete  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          customActivityTile(
            imgPath: "assets/images/img4.jpg",
            title: RichText(
              text: TextSpan(
                style: new TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "juicewrld999",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text:
                          " mentioned you in a comment: Congrats for your app launch"),
                ],
              ),
            ),
            subtitle: Text("20h"),
          ),
          customActivityTile(
            imgPath: "assets/images/img5.jpg",
            title: RichText(
              text: TextSpan(
                style: new TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "kyliejenner",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: " requested to follow you"),
                ],
              ),
            ),
            subtitle: Text("20h"),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "  Confirm  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "  Delete  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
