import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/custom_widgets/custom_status_card.dart';

class CustomPostTile extends StatelessWidget {
  const CustomPostTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(2, 0, 4, 0),
          leading: Container(
            height: 44,
            child: CustomStatusCard(),
          ),
          title: Text(
            "m_tabishhh",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        ),
        Image.asset('assets/images/img2.jpg'),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          leading: FittedBox(
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                ImageIcon(
                  AssetImage('assets/icons/speech-bubble.png'),
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                ImageIcon(
                  AssetImage(
                    'assets/icons/send.png',
                  ),
                  color: Colors.black,
                ),
              ],
            ),
          ),
          trailing: Icon(
            Icons.bookmark,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            children: [
              Container(
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.asset(
                    'assets/images/img1.jpg',
                  ),
                ),
              ),
              SizedBox(width: 4),
              Text("Liked by "),
              Text(
                "msamik",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("and "),
              Text(
                "1,657,557 others ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
