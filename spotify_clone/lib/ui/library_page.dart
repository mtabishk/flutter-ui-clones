import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildAppBar(),
                SizedBox(height: 16.0),
                SizedBox(
                  height: 30,
                  child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 16.0),
                        _buildRoundedContainers('Playlists'),
                        SizedBox(width: 16.0),
                        _buildRoundedContainers('Artists'),
                        SizedBox(width: 16.0),
                        _buildRoundedContainers('Albums'),
                        SizedBox(width: 16.0),
                        _buildRoundedContainers('Podcast & Shows'),
                        SizedBox(width: 16.0),
                      ]),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.import_export_outlined),
                        SizedBox(width: 4.0),
                        Text("Recently Played"),
                      ],
                    ),
                    Icon(Icons.window_outlined, size: 18.0),
                  ],
                ),
                SizedBox(height: 16.0),
                ListTile(
                  leading: Image.asset('assets/images/fav_artist1.jpg'),
                  title: Text("Lil Durk"),
                  subtitle: Text("Artist"),
                ),
                ListTile(
                  leading: Image.asset('assets/images/cover.jpg'),
                  title: Text("Fair Trade (ft. Travis Scott) - Drake"),
                  subtitle: Text("Playlst • Vince"),
                ),
                ListTile(
                  leading: Image.asset('assets/images/fav_artist8.jpg'),
                  title: Text("Pop Smoke"),
                  subtitle: Text("Artist"),
                ),
                ListTile(
                  leading: Image.asset('assets/images/cover2.jpg'),
                  title: Text("Grind Time"),
                  subtitle: Text("Playlist • CameronTuner"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
                height: 40,
                width: 40,
                child: ClipOval(child: Image.asset('assets/images/dp.jpg'))),
            SizedBox(width: 8.0),
            Text(
              'Your Library',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.search_outlined),
            SizedBox(width: 16.0),
            Icon(Icons.add_outlined),
          ],
        ),
      ],
    );
  }

  Widget _buildRoundedContainers(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(width: 1.0, color: Colors.grey),
        color: Color(0x444444),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
