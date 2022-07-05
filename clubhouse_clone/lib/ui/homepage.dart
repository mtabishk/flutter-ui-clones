import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        
      ),
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            children: [
              _buildRoomContainer(),
              SizedBox(height: 16.0),
              _buildRoomContainer(),
              SizedBox(height: 16.0),
              Text(
                "UPCOMING EVENTS",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  padding: EdgeInsets.all(8),
                  itemBuilder: (BuildContext context, int index) => Row(
                    children: [
                      _buildUpcomingEventsContainer(),
                      SizedBox(
                        width: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              _buildRoomContainer(),
              SizedBox(height: 16.0),
              _buildRoomContainer(),
            ],
          ),
          _buildBottomBar(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildRoomContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lets Clip ✂  New feature 🔥",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Edin Ross",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    Text("Tommy Lee",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    Text("Alpha",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    Text("Von Neuman",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: "200 ",
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              color: Colors.grey[600],
                            ),
                          ),
                          TextSpan(
                            text: " / ",
                          ),
                          TextSpan(
                            text: "14 ",
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.insert_comment,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingEventsContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lets Clip ✂  New feature 🔥",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Edin Ross",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    Text("Tommy Lee",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    Text("Alpha",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    Text("Von Neuman",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w400)),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: "200 ",
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.person,
                              color: Colors.grey[600],
                            ),
                          ),
                          TextSpan(
                            text: " / ",
                          ),
                          TextSpan(
                            text: "14 ",
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.insert_comment,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Color(0xFFF2EFE5).withOpacity(0.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.apps,
                    size: 32.0,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
                TextButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        "Start a room ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ))),
                ),
                Transform.rotate(
                  angle: 270 * math.pi / 180,
                  child: Icon(
                    Icons.send,
                    size: 32.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFF2EFE5),
            child: SizedBox(
              height: 32.0,
            ),
          )
        ],
      ),
    );
  }
}
