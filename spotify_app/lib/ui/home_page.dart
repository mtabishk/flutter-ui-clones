import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Color(0xdda1a1),
                  Colors.black,
                  Colors.black,
                  Colors.black
                ])),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildAppBar(),
                  SizedBox(height: 32.0),
                  _buildPlayListTileWrap(
                    nameA: 'Lil Durk',
                    nameB: 'Lil Wayne',
                    imageA: 'fav_artist1.jpg',
                    imageB: 'fav_artist2.jpg',
                  ),
                  SizedBox(height: 8.0),
                  _buildPlayListTileWrap(
                    nameA: 'Lil Baby',
                    nameB: 'Drake',
                    imageA: 'fav_artist3.jpg',
                    imageB: 'fav_artist4.jpg',
                  ),
                  SizedBox(height: 8.0),
                  _buildPlayListTileWrap(
                    nameA: 'Post Malone',
                    nameB: 'Juice Wrld',
                    imageA: 'fav_artist5.jpg',
                    imageB: 'fav_artist6.jpg',
                  ),
                  SizedBox(height: 32.0),
                  Text(
                    'Your shows',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    height: 220.0,
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildShowsGridView(
                            image: 'podcast3.jpg',
                            title: 'Ted Talks Daily',
                            subtitle: "Podcast • TED"),
                        SizedBox(width: 16.0),
                        _buildShowsGridView(
                            image: 'podcast2.jpg',
                            title: 'Red Collar',
                            subtitle: "Show • audiochuck"),
                        SizedBox(width: 16.0),
                        _buildShowsGridView(
                            image: 'podcast1.jpg',
                            title: 'All Grown Up',
                            subtitle: "Show • FaZe Clan"),
                        SizedBox(width: 16.0),
                        _buildShowsGridView(
                            image: 'podcast4.jpg',
                            title: 'The Daily',
                            subtitle: "Podcast • The New York Times"),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text('Your favorite artists',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w800)),
                  SizedBox(height: 16.0),
                  SizedBox(
                    height: 220.0,
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildOvalGridView(
                            image: 'fav_artist1.jpg', title: 'Lil Durk'),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist3.jpg', title: 'Lil Baby'),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist2.jpg', title: 'Lil Wayne'),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist6.jpg', title: 'Juice Wrld'),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist4.jpg', title: 'Drake'),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist5.jpg', title: 'Post Malone'),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Recently played',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    height: 220.0,
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildShowsGridView(
                            image: 'podcast3.jpg',
                            title: 'Ted Talks Daily',
                            subtitle: "Podcast • TED"),
                        SizedBox(width: 16.0),
                        _buildShowsGridView(
                            image: 'podcast1.jpg',
                            title: 'All Grown Up',
                            subtitle: "Show • FaZe Clan"),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist1.jpg', title: 'Lil Durk'),
                        SizedBox(width: 16.0),
                        _buildShowsGridView(
                            image: 'podcast2.jpg',
                            title: 'Red Collar',
                            subtitle: "Show • audiochuck"),
                        SizedBox(width: 16.0),
                        _buildOvalGridView(
                            image: 'fav_artist2.jpg', title: 'Lil Wayne'),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0),
                ],
              ),
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
        Text(
          'Good Morning',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
        ),
        Row(
          children: [
            Icon(Icons.notifications_outlined),
            SizedBox(width: 16.0),
            Icon(Icons.history_outlined),
            SizedBox(width: 16.0),
            Icon(Icons.settings_outlined),
          ],
        ),
      ],
    );
  }

  Widget _buildPlayListTile({required String name, required String image}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 58.0,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.all(
          Radius.circular(2.0),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 58.0,
            child: Image.asset('assets/images/$image'),
          ),
          SizedBox(width: 4.0),
          Text(name,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800)),
        ],
      ),
    );
  }

  Widget _buildPlayListTileWrap(
      {required String nameA,
      required String nameB,
      required String imageA,
      required String imageB}) {
    return Wrap(
      //   alignment: WrapAlignment.spaceEvenly,
      children: [
        _buildPlayListTile(name: nameA, image: imageA),
        SizedBox(width: 8.0),
        _buildPlayListTile(name: nameB, image: imageB),
      ],
    );
  }

  Widget _buildShowsGridView(
      {required image, required title, required subtitle}) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.purple,
            image: DecorationImage(
              image: AssetImage('assets/images/$image'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 4.0),
        Text(subtitle, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildOvalGridView({required String image, required String title}) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: ClipOval(
            child: Image.asset('assets/images/$image'),
          ),
        ),
        SizedBox(height: 8.0),
        Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
