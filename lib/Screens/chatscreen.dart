import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: new EdgeInsets.only(top: 0.1.sh),
                child: Text(
                  "Today",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: new EdgeInsets.only(top: 0.03.sh, right: 0.02.sw),
                  child: Container(
                    child: Padding(
                      padding: new EdgeInsets.all(0.015.sh),
                      child: Text(
                        "Hello Martini",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: new EdgeInsets.all(0.015.sh),
                      child: Text(
                        "Hello Nayaana !!",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: new EdgeInsets.all(0.015.sh),
                      child: Text(
                        "It's Been A While You Have Messaged\nWhat's Up?",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: new EdgeInsets.only(top: 0.02.sh, right: 0.02.sw),
                  child: Container(
                    child: Padding(
                      padding: new EdgeInsets.all(0.015.sh),
                      child: Text(
                        "I Wonder If You Would Like To Go To A\nComic Film Tonight",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 15.0),
                  child: Container(
                    child: Padding(
                      padding: new EdgeInsets.all(0.015.sh),
                      child: Text(
                        "Sounds Like A Good Deal",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: new EdgeInsets.only(
                    left: 0.04.sw, right: 0.04.sw, top: 0.15.sh),
                child: Row(
                  children: [
                    Container(
                      height: 0.07.sh,
                      width: 0.75.sw,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  0.0, 2.0), // shadow direction: bottom right
                            )
                          ]),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: new EdgeInsets.only(left: 0.02.sw),
                            child: Text("Type a message here"),
                          ),
                          Padding(
                            padding: new EdgeInsets.only(left: 0.1.sw),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.red,
                              size: 0.08.sw,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(left: 0.05.sw),
                      child: Container(
                        height: 0.06.sh,
                        width: 0.12.sw,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
          actions: [
            Padding(
              padding: new EdgeInsets.only(right: 0.04.sw),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/25.png"),
              ),
              Padding(
                padding: new EdgeInsets.only(left: 0.02.sw),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "martini_rond",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Typing...",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
