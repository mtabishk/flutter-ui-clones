import 'package:flutter/material.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  static List<String> images = [
    "avatar_0.jpg",
    "avatar_1.jpg",
    "avatar_2.jpg",
    "avatar_3.jpg",
    "avatar_0.jpg",
    "avatar_1.jpg",
    "avatar_2.jpg",
    "avatar_3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: SizedBox(
          width: 120.0,
          child: Image.asset('assets/icons/youtube_logo.png'),
        ),
        actions: [
          Icon(Icons.cast),
          SizedBox(width: 20),
          Icon(Icons.notifications_none),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.account_circle_outlined),
          SizedBox(width: 20),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.89,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) =>
                          _buildStatusCard(image: images[index]),
                    ),
                  ),
                ),
                Text("ALL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: SizedBox(
                height: 30,
                child: ListView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('All'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('New to you'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('Gadgets'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('Apple'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('Python'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('History'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('Live'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('Music'),
                      SizedBox(width: 8.0),
                      _buildRoundedContainers('Recently uploaded'),
                    ]),
              ),
            ),
            SizedBox(height: 4.0),
            _buildVideoView(
                imageName: 'thumbnail_2.jpg',
                title: 'Dope Tech: Boston Dynamics Robot Dog!',
                subtitle: 'Marques Brownlee · 5.3M views · 1 year ago',
                avatarImage: 'avatar_2.jpg'),
            _buildVideoView(
                imageName: 'thumbnail_3.jpg',
                title: '2021 Apple TV 4K Review: 1 Month Later',
                subtitle: 'SpawnPoiint · 223K views · 2 months ago',
                avatarImage: 'avatar_3.jpg'),
            _buildVideoView(
                imageName: 'thumbnail_1.jpg',
                title: 'Goodbye FaZe Kay | A New Beginning',
                subtitle: 'Kay · 603K views · 2 days ago',
                avatarImage: 'avatar_1.jpg'),
            _buildVideoView(
                imageName: 'thumbnail_0.jpg',
                title:
                    'Drake ft. Future and Young Thug - Way 2 Sexy (Official Video)',
                subtitle: 'Drake · 31M views · 2 weeks ago',
                avatarImage: 'avatar_0.jpg'),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildRoundedContainers(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(width: 1.0, color: Colors.grey),
        color: text == 'All' ? Colors.white : Colors.grey[800],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        child: Text(
          text,
          style:
              TextStyle(color: text == 'All' ? Colors.grey[800] : Colors.white),
        ),
      ),
    );
  }

  Widget _buildVideoView(
      {required String imageName,
      required title,
      required subtitle,
      required avatarImage}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(alignment: Alignment.bottomRight, children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/$imageName',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Opacity(
              opacity: 1,
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                  child: Text("LIVE"),
                ),
              ),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            leading: SizedBox(
                height: 40.0,
                child:
                    ClipOval(child: Image.asset('assets/images/$avatarImage'))),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
      ],
    );
  }

  Widget _buildStatusCard({required String image}) {
    return Card(
      elevation: 2,
      shape: CircleBorder(),
      child: Container(
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
        ),
        child: ClipOval(
          child: Image.asset(
            'assets/images/$image',
          ),
        ),
      ),
    );
  }
}
