import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0.0,
          title: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 9.5,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                //  height: ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(opacity: 0, child: Icon(Icons.camera_alt)),
                  Text("Search",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.0)),
                  Row(
                    children: [Icon(Icons.camera_alt), SizedBox(width: 8.0)],
                  ),
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Text("Recent searches",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0)),
              SizedBox(height: 16.0),
              ListTile(
                trailing: Icon(Icons.clear_outlined),
                leading: ClipOval(
                  child: Image.asset("assets/images/fav_artist7.jpg"),
                ),
                title: Text("Quavo"),
                subtitle: Text("Artist"),
              ),
              ListTile(
                trailing: Icon(Icons.clear_outlined),
                leading: ClipOval(
                  child: Image.asset("assets/images/fav_artist6.jpg"),
                ),
                title: Text("Juice Wrld"),
                subtitle: Text("Artist"),
              ),
            ],
          ),
        ));
  }
}
