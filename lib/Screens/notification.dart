import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notif extends StatefulWidget {
  @override
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
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
      appBar: AppBar(
        bottom: PreferredSize(
          child: Column(
            children: [
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Friend Requests",
                      style: TextStyle(fontSize: 0.025.sh),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(left: 0.50.sw),
                      child: CircleAvatar(
                        radius: 0.03.sw,
                        backgroundColor: Colors.red,
                        child: Text(
                          "5",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          preferredSize: Size(1.0.sw, 0.04.sh),
        ),
        title: Text(
          "You",
          style: TextStyle(fontSize: 0.05.sw),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView(
          physics: new BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 0.02.sh),
          children: [
            Padding(
              padding: new EdgeInsets.only(
                  left: 0.02.sh, top: 0.02.sh, bottom: 0.02.sh),
              child: Text(
                "Now",
                style: TextStyle(fontSize: 0.05.sw),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text("karenne liked your photo"),
                  Padding(
                      padding: new EdgeInsets.only(left: 0.02.sw),
                      child: Text(
                        "1h",
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
              trailing: Container(
                  height: 0.05.sh,
                  width: 0.1.sw,
                  child: Image(image: AssetImage("assets/pic.jpg"))),
              leading: CircleAvatar(
                radius: 0.05.sh,
                backgroundImage: AssetImage("assets/photo.jfif"),
              ),
            ),
            Divider(),
            Padding(
              padding: new EdgeInsets.only(
                  left: 0.02.sh, top: 0.02.sh, bottom: 0.02.sh),
              child: Text(
                "Today",
                style: TextStyle(fontSize: 0.05.sw),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text(
                    "kiero_d, zackjohn and 26 others\nliked your photo",
                    style: TextStyle(fontSize: 0.033.sw),
                  ),
                  Text(
                    "  3h",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              trailing: Container(
                  height: 0.05.sh,
                  width: 0.1.sw,
                  child: Image(image: AssetImage("assets/pic.jpg"))),
              leading: CircleAvatar(
                radius: 0.05.sh,
                backgroundImage: AssetImage("assets/photo.jfif"),
              ),
            ),
            Divider(),
            Padding(
              padding: new EdgeInsets.only(
                  left: 0.02.sh, top: 0.02.sh, bottom: 0.02.sh),
              child: Text(
                "This Week",
                style: TextStyle(fontSize: 0.05.sw),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Text(
                    "craig_love mentioned you in a\ncomment @jacob_w",
                    style: TextStyle(fontSize: 0.040.sw),
                  ),
                ],
              ),
              subtitle: Text("Have a nice day, bro!"),
              trailing: Container(
                  height: 0.05.sh,
                  width: 0.1.sw,
                  child: Image(image: AssetImage("assets/pic.jpg"))),
              leading: CircleAvatar(
                radius: 0.05.sh,
                backgroundImage: AssetImage("assets/photo.jfif"),
              ),
            ),
            Padding(
              padding: new EdgeInsets.only(top: 0.025.sh),
              child: ListTile(
                title: Text(
                  "martini-rond started\nfollowing you",
                  style: TextStyle(fontSize: 0.04.sw),
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    primary: Colors.white,
                  ),
                  child: Text(
                    "Message",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 0.05.sh,
                  backgroundImage: AssetImage("assets/photo.jfif"),
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.only(top: 0.025.sh),
              child: ListTile(
                title: Text(
                  "maxjacobson started\nfollowing you",
                  style: TextStyle(fontSize: 0.04.sw),
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    primary: Colors.white,
                  ),
                  child: Text(
                    "Message",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 0.05.sh,
                  backgroundImage: AssetImage("assets/photo.jfif"),
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.only(top: 0.025.sh),
              child: ListTile(
                title: Text(
                  "mis_potter started\nfollowing you",
                  style: TextStyle(fontSize: 0.04.sw),
                ),
                trailing: ElevatedButton(
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                leading: CircleAvatar(
                  radius: 0.05.sh,
                  backgroundImage: AssetImage("assets/photo.jfif"),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: new EdgeInsets.only(
                  left: 0.02.sh, top: 0.02.sh, bottom: 0.02.sh),
              child: Text(
                "This Week",
                style: TextStyle(fontSize: 0.05.sw),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 4) {
      Navigator.pushNamed(context, '/profile');
    } else if (index == 0) {
      Navigator.pushNamed(context, '/feed');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/search');
    }
  }
}
