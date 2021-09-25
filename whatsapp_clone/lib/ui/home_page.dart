import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 0, 98, 87),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                    child: Text("CHATS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                Tab(
                    child: Text("STATUS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                Tab(
                    child: Text("CALLS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
              ],
            ),
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 16.0),
              Icon(Icons.more_vert),
            ],
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt),
              _buildChatsTabBarView(),
              _buidStatusTabBarView(),
              _buildCallsTabBarView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChatsTabBarView() {
    return Scaffold(
      body: ListView(
        children: [
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/profile1.jpg',
            title: 'John Murphy',
            subtitle: 'Tried calling him but it didn\'t work',
            time: '10:00 AM',
            messages: '3',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/profile2.jpg',
            title: 'Elizabeth Bennet',
            subtitle: 'Tried calling him but it didn\'t work',
            time: '9:04 AM',
            messages: '5',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/group_icon.png',
            title: 'Memories 👪',
            subtitle: 'You were added',
            time: '11/09/21',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/group_icon.png',
            title: 'Outdoor Activites ⚽',
            subtitle: 'You were added',
            time: '08/09/21',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/profile5.jpg',
            title: 'Hero Fieness',
            subtitle: 'Good job. I loved your work',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/profile4.jpg',
            title: 'Katherine',
            subtitle: 'Great working with you.',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/profile6.jpg',
            title: 'Love ❤',
            subtitle: 'Good Night bae',
          ),
          _buildChatsTabBarViewItem(
            imageUrl: 'assets/images/profile7.png',
            title: 'Dr Murphy',
            subtitle: 'Tried calling him but it didn\'t work',
          ),
          _buildChatsTabBarViewItem(
              imageUrl: 'assets/images/group_icon.png',
              title: 'Fun',
              subtitle: 'You were added',
              time: '12/01/21'),
          Center(
            child: Text(
              "Tap and hold on a chat for more options",
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.black54),
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF128B7E),
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }

  Widget _buidStatusTabBarView() {
    return Scaffold(
      body: ListTile(
        leading: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipOval(
              child: Image.asset("assets/images/dp.jpg"),
            ),
            Container(
              height: 22.0,
              width: 22.0,
              decoration: BoxDecoration(
                color: Color(0xFF128B7E),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                border: Border.all(width: 2.0, color: Colors.white),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 18.0,
              ),
            )
          ],
        ),
        title: Text("My status",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
        subtitle: Text("Tap to add status update"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: Colors.grey[100],
                child: Icon(
                  Icons.edit,
                  color: Colors.black38,
                ),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            backgroundColor: Color(0xFF128B7E),
            child: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCallsTabBarView() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black54, fontSize: 18.0),
              children: [
                TextSpan(
                    text: 'To start calling contacts who have WhatsApp, tap '),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child:
                        Icon(Icons.add_ic_call, size: 18.0, color: Colors.grey),
                  ),
                ),
                TextSpan(text: ' at the bottom of the screen'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF128B7E),
        child: Icon(
          Icons.add_ic_call,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildChatsTabBarViewItem(
      {required String imageUrl,
      required String title,
      required String subtitle,
      String? time,
      String? messages}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: ClipOval(
          child: Image.asset(imageUrl),
        ),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
        subtitle: Text(subtitle),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (time != null)
              Text(time,
                  style: TextStyle(
                      color:
                          messages == null ? Colors.black38 : Colors.green[500],
                      fontWeight: FontWeight.w500)),
            if (messages != null)
              Container(
                  height: 22.0,
                  width: 22.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green[500],
                  ),
                  child: Center(
                    child: Text(messages,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  )),
          ],
        ),
      ),
    );
  }
}
