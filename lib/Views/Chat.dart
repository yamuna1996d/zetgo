import 'package:zetgo/srcs/Categorychat.dart';
import 'package:zetgo/srcs/fvcontacts.dart';
import 'package:zetgo/srcs/recent.dart';
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.black],
                begin: Alignment.topRight,
                end: Alignment.center),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 20.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.black87],
              begin: Alignment.topRight,
              end: Alignment.center),
        ),
        child: Column(
          children: <Widget>[

            Expanded(
              child: Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(),
                    RecentChats(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}