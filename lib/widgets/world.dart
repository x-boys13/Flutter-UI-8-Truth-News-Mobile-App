// This fiile has the widget which is to be displayed then we click on the World in top navigation bar.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'singleArticle.dart';

final List<String> _listitems = [
  "https://images.unsplash.com/photo-1426024084828-5da21e13f5dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1587372723630-cc6f6f661cdc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1587614222350-286dd1a0e619?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1564697259644-03cd5e7363fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1589353834625-b47ec0875dce?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
];

Widget world(context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SingleArticle()));
    },
    child: Container(
      child: Container(
          height: 500,
          width: double.infinity,
          // Here the items for the pages related to home will be stored.
          child:
              // This is the widget having the things which are to be displayed inisde the world thing.
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Items which are displayed in the top navigation bar
              Padding(padding: EdgeInsets.only(top: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Card(
                        elevation: 2,
                        color: Colors.transparent,
                        child: Center(
                          child: Container(
                            height: 150,
                            width: double.infinity - 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                                )),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 15, top: 10, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Come and dance on our floor",
                                    style: TextStyle(
                                        letterSpacing: -1,
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(width: 75),
                                FaIcon(
                                  FontAwesomeIcons.heart,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.share,
                                  size: 18,
                                ),
                              ],
                            ),
                            Text(
                              "7th Aug  -  3 mins read",
                              style: TextStyle(
                                letterSpacing: -0.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Items which are displayed in the bottom gridview
              Expanded(
                child: GridView.count(
                  childAspectRatio: 1 / 1.5,
                  crossAxisCount: 2,
                  padding: EdgeInsets.only(left: 18, right: 18),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listitems
                      .map(
                        (e) => Card(
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 185,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 2)
                                  ],
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: NetworkImage(e),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
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
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          )),
    ),
  );
}
