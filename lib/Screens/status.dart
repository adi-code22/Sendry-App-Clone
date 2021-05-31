import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 0.81.sh,
                  width: 1.0.sw,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/back.jfif"))),
                ),
                Row(
                  children: [
                    Padding(
                      padding: new EdgeInsets.all(0.02.sw),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assetName"),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(left: 0.01.sw),
                      child: Text(
                        "karren",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(left: 0.30.sw),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: new EdgeInsets.all(0.025.sw),
                          child: Text(
                            "LIVE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(left: 0.02.sw),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Padding(
                                padding: new EdgeInsets.all(0.015.sw),
                                child: Icon(Icons.remove_red_eye_rounded)),
                            Padding(
                              padding: new EdgeInsets.only(right: 0.04.sw),
                              child: Text("1"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(left: 0.02.sw),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              color: Colors.black,
              height: 0.10.sh,
              width: 1.0.sw,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.black,
                      width: 0.6.sw,
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.drag_indicator_sharp,
                            color: Colors.white,
                          ),
                          prefix: SizedBox(
                            width: 0.05.sw,
                          ),
                          hintText: "Comment",
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.all(0.00.sh),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left: 0.05.sw),
                    child: Text(
                      "?",
                      style: TextStyle(color: Colors.white, fontSize: 0.07.sw),
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left: 0.05.sw),
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(left: 0.05.sw),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
