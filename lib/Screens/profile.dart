import 'package:flutter/material.dart';
import 'package:instgram/Screens/Widgets/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      drawer: SafeArea(child: NavDrawer()),
      appBar: AppBar(backgroundColor: Colors.white.withOpacity(0.5)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: 4,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                color: Colors.white,
              ),
              label: ""),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: new EdgeInsets.only(top: 0.03.sh),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        radius: 0.3.sh,
                        backgroundImage: AssetImage("assets/photo.jfif"),
                      ),
                    ),
                    Positioned(
                      top: 0.5.sh,
                      left: 0.025.sh,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hello",
                                style: TextStyle(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 0.12.sw),
                              ),
                              Text(
                                ", Nayanaa",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 0.12.sw),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.025.sh),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "UI/UX Designer",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 0.08.sw),
                    ),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 0.01.sh),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "54",
                            style: TextStyle(
                                color: Colors.white, fontSize: 0.030.sh),
                          ),
                          Text("Posts", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "834",
                            style: TextStyle(
                                color: Colors.white, fontSize: 0.030.sh),
                          ),
                          Text("Followers",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "162",
                            style: TextStyle(
                                color: Colors.white, fontSize: 0.030.sh),
                          ),
                          Text("Following",
                              style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/feed');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/search');
    }
  }
}
