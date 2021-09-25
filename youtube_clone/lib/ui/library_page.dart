import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          _buildListTile(icon: Icon(Icons.history), title: "History"),
          _buildListTile(icon: Icon(Icons.smart_display), title: "Your videos"),
          _buildListTile(
              icon: Icon(Icons.file_download),
              title: "Downloads",
              subtitle: "12 videos"),
          _buildListTile(
              icon: Icon(Icons.local_movies_outlined), title: "Your movies"),
          _buildListTile(
              icon: Icon(Icons.schedule),
              title: "Watch later",
              subtitle: "120 unwatched videos"),
          Divider(),
          SizedBox(
            height: 30.0,
            child: ListTile(
              leading: Text("Playlists"),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text("Recently added"),
                  SizedBox(width: 4.0),
                  Icon(
                    Icons.expand_more,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),
          ),
          _buildColouredListTile(
              icon: Icon(Icons.add, color: Colors.blue), title: 'New playlist'),
          _buildListTile(
              icon: Icon(Icons.thumb_up),
              title: 'Liked videos',
              subtitle: '415 videos'),
        ],
      ),
    );
  }

  Widget _buildListTile(
      {required Icon icon, required String title, String? subtitle}) {
    return ListTile(
      leading: icon,
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
    );
  }

  Widget _buildColouredListTile(
      {required Icon icon, required String title, String? subtitle}) {
    return ListTile(
      leading: icon,
      title: Text(title, style: TextStyle(color: Colors.blue)),
      subtitle: subtitle != null ? Text(subtitle) : null,
    );
  }
}
