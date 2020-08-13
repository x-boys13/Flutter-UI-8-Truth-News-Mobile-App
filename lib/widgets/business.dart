// This fiile has the widget which is to be displayed then we click on the Business in top navigation bar.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              // color: Colors.pink,
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

Widget listItem(number, context) {
  return number == 0
      ? Card(
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.nbcsports.com/sites/nbcsports.com/files/styles/double_2__desktop_large_/public/2020/06/30/gettyimages-1206126726-e1593516050712.jpg?itok=HNgnrptb&timestamp=1593517682"),
                                ),
                              ),
                              height: MediaQuery.of(context).size.height / 6.4,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                          ),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.heart, size: 15),
                              ))
                        ],
                      ),
                      Text("Life Speed Racered",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -1)),
                      Text(
                        "7th Aug  -  3 mins read",
                        style: TextStyle(
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 14),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://img01.ti-da.net/usr/c/h/u/chuchuchuara/app-009961100s1410590027.jpg"),
                                ),
                              ),
                              height: MediaQuery.of(context).size.height / 6.4,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                          ),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.heart, size: 15),
                              ))
                        ],
                      ),
                      Text("Life Speed Racered",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -1)),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(bottom: 8.0),
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.mindfood.com/wp-content/themes/mindfood-theme/timthumb.php?src=/wp-content/uploads/2017/05/luma_lights.jpg&w=700&h=700&zc=1"),
                                ),
                              ),
                              height: 280,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                          ),
                          Positioned(
                              right: 20,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.heart, size: 15),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Life Speed Racered",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -1)),
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
                ),
              ],
            ),
          ),
        )
      : Card(
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(bottom: 8.0),
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQk9erxzW85VFn-r4NBsTO_OxOW-tWsKAhqfw&usqp=CAU"),
                                ),
                              ),
                              height: 280,
                              width: MediaQuery.of(context).size.width / 2.4,
                            ),
                          ),
                          Positioned(
                              right: 20,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.heart, size: 15),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Life Speed Racered",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -1)),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1/womensbikerace-0-1521133202.jpg"),
                                ),
                              ),
                              height: MediaQuery.of(context).size.height / 6.4,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                          ),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.heart, size: 15),
                              ))
                        ],
                      ),
                      Text("Life Speed Racered",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -1)),
                      Text(
                        "7th Aug  -  3 mins read",
                        style: TextStyle(
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 14),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              // color: Colors.black,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                                ),
                              ),
                              height: MediaQuery.of(context).size.height / 6.4,
                              width: MediaQuery.of(context).size.width / 2.3,
                            ),
                          ),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.heart, size: 15),
                              ))
                        ],
                      ),
                      Text("Life Speed Racered",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -1)),
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
                )
              ],
            ),
          ),
        );
}
