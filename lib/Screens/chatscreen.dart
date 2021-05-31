import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: ListView(
          children: [
            ListTile(
              title: Text("martina_rond"),
              subtitle: Text("Typing..."),
              leading: CircleAvatar(
                backgroundImage: AssetImage(""),
              ),
            )
          ],
        ),
      ),
    );
  }
}
