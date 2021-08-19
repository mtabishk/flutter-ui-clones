import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/custom_widgets/custom_post_tile.dart';
import 'package:instagram_clone/ui/custom_widgets/custom_status_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Instagram",
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 36.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('assets/icons/send.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) =>
                      CustomStatusCard(),
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 540,
              child: ListView(
                children: [
                  CustomPostTile(),
                  CustomPostTile(),
                  CustomPostTile(),
                  CustomPostTile(),
                  Text("Loading..."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
