import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.only(top: 0.01.sh),
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.all(0.02.sh),
              child: Text(
                'Nayaana Rookey',
                style: TextStyle(color: Colors.white, fontSize: 0.035.sh),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.av_timer,
                color: Colors.white,
                size: 0.045.sh,
              ),
              title: Text(
                'Posts',
                style: TextStyle(color: Colors.white, fontSize: 0.03.sh),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(
                Icons.timelapse,
                color: Colors.white,
                size: 0.045.sh,
              ),
              title: Text('Following',
                  style: TextStyle(color: Colors.white, fontSize: 0.03.sh)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.format_list_bulleted,
                  color: Colors.white, size: 0.045.sh),
              title: Text('Followers',
                  style: TextStyle(color: Colors.white, fontSize: 0.03.sh)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading:
                  Icon(Icons.group_add, color: Colors.white, size: 0.045.sh),
              title: Text('Discover People',
                  style: TextStyle(color: Colors.white, fontSize: 0.03.sh)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            Padding(
              padding: new EdgeInsets.only(top: 0.42.sh),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 0.045.sh,
                  color: Colors.white,
                ),
                title: Text('Settings',
                    style: TextStyle(color: Colors.white, fontSize: 0.03.sh)),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
