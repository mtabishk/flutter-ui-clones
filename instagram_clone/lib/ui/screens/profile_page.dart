import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: [
              ImageIcon(
                AssetImage("assets/icons/lock.png"),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'm_tabishhhh',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Icon(
                Icons.expand_more_outlined,
              )
            ],
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            SizedBox(width: 16),
            Icon(Icons.menu_outlined),
            SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/images/img1.jpg"),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "27",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text("Posts"),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "692",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text("Followers"),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "426",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text("Following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 16, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "TABISH 🐉",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text("Grateful • الحمد لله"),
                          Text("born in kashmir 🍁"),
                          Text("socials 👇👇 "),
                          Text(
                            "linktr.ee/mtabishk",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Edit Profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.expand_more_outlined,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    DefaultTabController(
                      length: 2,
                      child: TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                            icon: Icon(Icons.grid_on_outlined),
                          ),
                          Tab(
                            icon: Icon(Icons.assignment_ind_outlined),
                          )
                        ],
                      ),
                    ),
                  ]),
              GridView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                children: [
                  Container(
                    child: Image.asset('assets/images/search.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/search3.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
