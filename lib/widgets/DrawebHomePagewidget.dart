import 'package:flutter/material.dart';

class DWidget extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      drawer: new Drawer(
          child: Column(
        children: [
          DrawerHeader(
            child: new Text("DRAWER HEADER.."),
            decoration: new BoxDecoration(color: Colors.orange),
          ),
          Text("Drawer Is Here => 1"),
          Text("Drawer Is Here => 2"),
          Text("Drawer Is Here => 3"),
        ],
      )),
      appBar: new AppBar(
        title: new Text("Drawer Demo"),
      ),
      body: new Text("Drawer Body"),
    );
  }
}
