// This fiile has the widget which is to be displayed then we click on the Business in top navigation bar.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'twoColOneRow.dart';

// The main widget which will be displayed
Widget business(context) {
  return Container(
    child: Container(
      height: MediaQuery.of(context).size.height / 1.44,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.1,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalListItems(context),
                  SizedBox(width: 10),
                  horizontalListItems(context),
                  SizedBox(width: 10),
                  horizontalListItems(context),
                  SizedBox(width: 10),
                  horizontalListItems(context),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          listItem(1, context),
          SizedBox(height: 5),
          listItem(0, context),
          SizedBox(height: 5),
          listItem(1, context),
        ],
      ),
    ),
  );
}

Widget horizontalListItems(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 17, 0),
    child: Container(
      height: MediaQuery.of(context).size.height,
      width: 250,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300], spreadRadius: 3, blurRadius: 2)
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1/womensbikerace-0-1521133202.jpg"),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Text("Life Speed Racered",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            letterSpacing: -1)),
                  ),
                  Text(
                    "7th Aug  -  3 mins read",
                    style: TextStyle(
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 68),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: FaIcon(
                  FontAwesomeIcons.heart,
                  size: 18,
                ),
              ),
              SizedBox(width: 0),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, right: 4),
                child: Icon(
                  Icons.share,
                  size: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
