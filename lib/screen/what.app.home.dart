import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_app/screen/status_screen.dart';

import 'call_screen.dart';
import 'camera_screen.dart';
import 'chat_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeStateState createState() => _WhatsAppHomeStateState();
}

class _WhatsAppHomeStateState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WhatApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CALLS",
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
