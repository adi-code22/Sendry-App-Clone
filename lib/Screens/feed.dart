import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // currentIndex: 0,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                color: Colors.black,
              ),
              label: ""),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size(0, 0.22.sh),
        child: AppBar(
          bottom: PreferredSize(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.046.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Padding(
                            padding: new EdgeInsets.only(top: 0.008.sh),
                            child: Text(
                              "Your Story",
                              style: TextStyle(fontSize: 0.02.sh),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: new EdgeInsets.all(0.005.sh),
                                child: CircleAvatar(
                                  radius: 0.044.sh,
                                  backgroundImage:
                                      AssetImage("assets/photo2.jfif"),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0.080.sh,
                              left: 0.030.sh,
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: new EdgeInsets.all(0.002.sh),
                                      child: Text(
                                        "LIVE",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            )
                          ]),
                          Padding(
                            padding: new EdgeInsets.all(0.008.sh),
                            child: Text(
                              "keran",
                              style: TextStyle(fontSize: 0.02.sh),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.046.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Padding(
                            padding: new EdgeInsets.all(0.008.sh),
                            child: Text(
                              "zackyy",
                              style: TextStyle(fontSize: 0.02.sh),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.046.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Padding(
                            padding: new EdgeInsets.all(0.008.sh),
                            child: Text(
                              "clooney_m",
                              style: TextStyle(fontSize: 0.02.sh),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.046.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Padding(
                            padding: new EdgeInsets.all(0.008.sh),
                            child: Text(
                              "kerran",
                              style: TextStyle(fontSize: 0.02.sh),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.046.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Padding(
                            padding: new EdgeInsets.all(0.008.sh),
                            child: Text(
                              "mine_22",
                              style: TextStyle(fontSize: 0.02.sh),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              preferredSize: Size(0, 0)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/chat');
                },
                icon: Icon(
                  Icons.message,
                  size: 0.08.sw,
                ))
          ],
          title: Text(
            "Feed",
            style: TextStyle(fontSize: 0.09.sw),
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
            title: Text("Zack Johnson"),
            subtitle: Text("25 minutes ago from OnePlus Nord"),
          ),
          Padding(
            padding: new EdgeInsets.only(left: 0.03.sh, right: 0.03.sh),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(0.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              //height: 0.8.sh,
              width: 2,
              child: Column(
                children: [
                  Padding(
                    padding: new EdgeInsets.only(
                        top: 0.025.sh,
                        left: 0.025.sh,
                        right: 0.025.sh,
                        bottom: 0.01.sh),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/bath.webp"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.04.sh, top: 0.000.sh),
                    child: Row(
                      children: [
                        Padding(
                          padding: new EdgeInsets.only(
                              left: 0.005.sh, bottom: 0.005.sh),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: new EdgeInsets.only(
                              left: 0.005.sh, bottom: 0.005.sh),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: new EdgeInsets.only(
                              left: 0.005.sh, bottom: 0.005.sh),
                          child: CircleAvatar(
                            radius: 15,
                            child: Text("+20"),
                            backgroundColor: Colors.yellow,
                          ),
                        ),
                        Padding(
                          padding: new EdgeInsets.only(
                              left: 0.15.sh, bottom: 0.005.sh),
                          child: CircleAvatar(
                            radius: 18,
                            child: Image(
                                image: AssetImage("assets/Heart (1).png")),
                            backgroundColor: Colors.yellow,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.only(
                top: 0.005.sh, left: 0.055.sw, right: 0.05.sw),
            child: RichText(
                text: new TextSpan(
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children: <TextSpan>[
                  new TextSpan(
                      text: "zackky",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          " The trip to bali was amazing and I want to share with you guys have a look please")
                ])),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text("Dhrew_r"),
            subtitle: Text("45 minutes ago from iPhone 8"),
          )
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 4) {
      Navigator.pushNamed(context, '/profile');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/search');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/notif');
    }
  }
}
