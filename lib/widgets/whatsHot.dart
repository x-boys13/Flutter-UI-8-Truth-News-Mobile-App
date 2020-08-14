import 'package:flutter/material.dart';

Widget verticalListItems(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      // color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white30,
      ),
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
                    borderRadius: BorderRadius.circular(4),
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
              aspectRatio: 2.6 / 2.3,
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
                                            fontSize: 15,
                                            letterSpacing: -1)),
                                  ),
                                  Text(
                                    "7th Aug  -  3 mins read",
                                    style: TextStyle(
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:4.0),
                                child: Icon(Icons.share,color:Colors.purple[800]),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        width: 160,
                        color: Colors.transparent,
                        child: Text(
                            "The first mate and his skipper on insland nest to till the end be enough to end.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey[800],
                                height: 1.3,
                                fontWeight: FontWeight.w200)),
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

Widget whatsHot(BuildContext context) {
  return Container(
    child: Container(
      height: MediaQuery.of(context).size.height / 1.44,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          verticalListItems(context),
          verticalListItems(context),
          verticalListItems(context),
          verticalListItems(context)
        ],
      ),
    ),
  );
}
