import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 16.0),
              Icon(Icons.chat),
              SizedBox(width: 16.0),
              Icon(Icons.more_vert),
            ],
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt),
              _buildChatsTabBarView(),
              Center(
                  child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Color.fromARGB(255, 0, 98, 87),
              )),
              Center(
                  child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Color.fromARGB(255, 0, 98, 87),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChatsTabBarView() {
    return ListView(
      children: [
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile1.jpg',
          title: 'John Murphy',
          subtitle: 'Tried calling him but it didn\'t work',
          time: '9:04 AM',
          messages: '3',
        ),
        _customDivider(),
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile2.jpg',
          title: 'Elizabeth Bennet',
          subtitle: 'Tried calling him but it didn\'t work',
          time: '10:00 AM',
          messages: '5',
        ),
        _customDivider(),
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile5.jpg',
          title: 'Hero Fieness',
          subtitle: 'Good job. I loved your work',
        ),
        _customDivider(),
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile4.jpg',
          title: 'Katherine',
          subtitle: 'Great working with you.',
        ),
        _customDivider(),
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile5.jpg',
          title: 'John Doe',
          subtitle: 'Tried calling him but it didn\'t work',
        ),
        _customDivider(),
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile5.jpg',
          title: 'Hero Fieness',
          subtitle: 'Good job. I loved your work',
        ),
        _customDivider(),
        _buildChatsTabBarViewItem(
          imageUrl: 'assets/images/profile4.jpg',
          title: 'Katherine',
          subtitle: 'Great working with you.',
        ),
      ],
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
          children: [
            if (time != null)
              Text(time,
                  style: TextStyle(
                      color: Colors.green[500], fontWeight: FontWeight.w500)),
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

  Widget _customDivider() {
    return Row(
      children: [
        Expanded(
          child: Opacity(
              opacity: 0.0,
              child: SizedBox(
                width: 10.0,
              )),
        ),
        Expanded(
          flex: 3,
          child: Divider(
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
