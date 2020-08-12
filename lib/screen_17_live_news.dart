import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LiveNewsScreen extends StatefulWidget {
  @override
  _LiveNewsScreenState createState() => _LiveNewsScreenState();
}

class _LiveNewsScreenState extends State<LiveNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        listItem(
            "https://images.unsplash.com/photo-1481456384069-0effc539ab7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
        listItem("https://getrippedblog.files.wordpress.com/2013/07/grand.jpg"),
        listItem(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0Ozr2y1GIzfLMsMYJN8c2dAjuztuN-dWkJw&usqp=CAU")
      ],
    ));
  }

  Widget listItem(link) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 5),
        child: Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 2)
                          ],
                          image: DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage(link))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.8),
                  Positioned(
                      top: 75,
                      left: 140,
                      child: Container(
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.purple[800],
                            size: 30,
                          ),
                        ),
                        height: 54,
                        width: 54,
                        // color: Colors.black,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ))
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
