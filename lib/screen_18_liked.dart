// This fiile has the widget which is to be displayed then we click on the heart icon in bottom navigation bar.


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/twoColOneRow.dart';

class LikedScreen extends StatefulWidget {
  @override
  _LikedScreenState createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 5),
          listItem(1, context),
          SizedBox(height: 5),
          listItem(0, context),
          SizedBox(height: 5),
          listItem(1, context),
          SizedBox(height: 5),
          listItem(0, context),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [Icon(Icons.search, color: Colors.black)],
        centerTitle: true,
        title: Text("Liked",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: Colors.black)),
      ),
    );
  }
}
