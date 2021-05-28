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
              child: TextFormField(
                decoration: InputDecoration(
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
              preferredSize: Size(0, 0)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 0.08.sw,
                ))
          ],
          leading: Padding(
            padding: new EdgeInsets.all(0.005.sh),
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
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
            subtitle: Text("Have a nice day, bro!"),
            trailing: Text("now"),
            leading: CircleAvatar(
              radius: 0.05.sh,
              backgroundImage: AssetImage("assets/photo.jfif"),
            ),
          ),
          ListTile(
            title: Text("joshua_l"),
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
    }
  }
}
