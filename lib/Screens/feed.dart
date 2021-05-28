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
        currentIndex: 0,
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
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Your Story",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Jackeyy",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Zack Rider",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Tommy",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Caramel",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Hanna",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Your Story",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Your Story",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.all(0.01.sh),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 0.05.sh,
                            backgroundImage: AssetImage("assets/photo2.jfif"),
                          ),
                          Text(
                            "Your Story",
                            style: TextStyle(fontSize: 0.02.sh),
                          ),
                        ],
                      ),
                    )
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
          leading: Container(),
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
          Container(
            color: Colors.white,
            height: 0.3.sh,
            width: 0.8.sw,
            child: Image(image: AssetImage("assets/pic.jpg")),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.04.sh, top: 0.003.sh),
            child: Row(
              children: [
                Padding(
                  padding: new EdgeInsets.all(0.005.sh),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.all(0.005.sh),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.all(0.005.sh),
                  child: CircleAvatar(
                    child: Text("+20"),
                    backgroundColor: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 0.005.sh, left: 0.15.sh),
                  child: CircleAvatar(
                    child: Image(image: AssetImage("assets/Heart (1).png")),
                    backgroundColor: Colors.yellow,
                  ),
                )
              ],
            ),
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
    }
  }
}
