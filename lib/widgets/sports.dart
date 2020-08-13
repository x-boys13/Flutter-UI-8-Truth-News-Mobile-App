import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget sports(context) {
  return Container(
    child: Container(
      height: MediaQuery.of(context).size.height / 1.44,
      width: MediaQuery.of(context).size.width,
      child:
          ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.3,
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
          verticalListItems(context),
          SizedBox(
            height: 10,
          ),
          verticalListItems(context),
          SizedBox(
            height: 10,
          ),
          verticalListItems(context),
          SizedBox(
            height: 10,
          ),
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
      width: 157,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 165,
              // color: Colors.pink,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 2)
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1/womensbikerace-0-1521133202.jpg"),
                ),
              ),
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
  );
}

Widget verticalListItems(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      // color: Colors.red,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 4,
              spreadRadius: 3,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // height: MediaQuery.of(context).size.height,
                // width: 75,
                // color: Colors.transparent,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1/womensbikerace-0-1521133202.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: AspectRatio(
              aspectRatio: 2.6 / 1,
              child: Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: 75,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: AspectRatio(
                          aspectRatio: 2.6 / 0.48,
                          child: Container(
                            // height: MediaQuery.of(context).size.height,
                            // width: 75,
                            color: Colors.transparent,
                            child: Row(
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
                                SizedBox(width: 30),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4.0, right: 4),
                                  child: Icon(
                                    Icons.share,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.6 / 0.42,
                        child: Container(
                          // height: MediaQuery.of(context).size.height,
                          // width: 75,
                          color: Colors.transparent,
                          child: Text(
                              "The first mate and his skipper on insland nest to till the end",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  height: 1.2,
                                  fontWeight: FontWeight.w300)),
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    ),
  );
}
