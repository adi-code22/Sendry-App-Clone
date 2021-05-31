import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
      appBar: PreferredSize(
        preferredSize: Size(0, 0.17.sh),
        child: AppBar(
          bottom: PreferredSize(
              child: Column(
                children: [
                  Padding(
                    padding: new EdgeInsets.only(bottom: 0.02.sw),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0.0.sw),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        filled: true,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              preferredSize: Size(0, 0)),
          actions: [
            Padding(
              padding: new EdgeInsets.only(right: 0.05.sw, top: 0.01.sh),
              child: CircleAvatar(
                radius: 0.035.sh,
                backgroundImage: AssetImage("assets/Like@3x.png"),
              ),
            )
          ],
          leading: Padding(
            padding: new EdgeInsets.only(top: 0.015.sh),
            child:
                CircleAvatar(backgroundImage: AssetImage("assets/photo.jfif")),
          ),
          title: Text(
            "Chats",
            style: TextStyle(fontSize: 0.09.sw),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 0.02.sh),
        children: [
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Row(
              children: [
                Text("joshua_l"),
                Padding(
                  padding: new EdgeInsets.only(left: 0.02.sw),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/26.png"),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Text("karennnea_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/19.png"),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Row(
              children: [
                Text("martini_rond"),
                Padding(
                  padding: new EdgeInsets.only(left: 0.02.sw),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/25.png"),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Text("andrewww_"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/dog.jfif"),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Text("kiero_d"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/chair.PNG"),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Row(
              children: [
                Text("maxjacobson"),
                Padding(
                  padding: new EdgeInsets.only(left: 0.02.sw),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Text("jamie.franco"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/chatscreen'),
            title: Text("m_humhrey"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
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
    } else if (index == 0) {
      Navigator.pushNamed(context, '/feed');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/search');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/post');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/notif');
    }
  }
}
