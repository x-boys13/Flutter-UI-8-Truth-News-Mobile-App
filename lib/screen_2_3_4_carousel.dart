import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'screen10_news_categories_and_items.dart';

class CarousalScreen extends StatefulWidget {
  @override
  _CarousalScreenState createState() => _CarousalScreenState();
}

class _CarousalScreenState extends State<CarousalScreen> {
  // Variable string for changing the text
  String snackBarText = "";

  // Alertdialog box showing
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Padding(
        padding: const EdgeInsets.only(top: 22.0, bottom: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Text(
                "Would you like to get latest updates and notifications?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            SizedBox(height: 24),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    snackBarText = "You will not recive notifications.";
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          NewsItems(snackBarText)));
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => NewsItems(snackBarText)));
                },
                child: Text(
                  "DENY",
                  style:
                      TextStyle(color: Colors.white, fontSize: 16, height: 1.2),
                ),
                color: Colors.purple[800],
              ),
              SizedBox(width: 10),
              FlatButton(
                onPressed: () {
                  setState(() {
                    snackBarText = "You will recive notifications.";
                  });
                  Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => NewsItems(snackBarText)));

                  // This sorks such that back button is not working
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => NewsItems(snackBarText)),
                  //   (Route<dynamic> route) => false,
                  // );

                  Navigator.of(context).pushReplacement(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          NewsItems(snackBarText)));
                },
                child: Text(
                  "ALLOW",
                  style: TextStyle(
                      color: Colors.purple[800], fontSize: 16, height: 1.2),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.purple[800])),
                color: Colors.white,
              )
            ])
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // variable for carousel dots
  int _current = 0;

  // List of Titles
  static List<String> imgList = [
    "Latest News Daily",
    "Regular Notifications",
    "Award Wining App"
  ];

  // List of Widgets formed with above titles
  final List<Widget> imageSlider = imgList.map((item) => texter(item)).toList();

  // For controlling the carousel
  final CarouselController _controller = CarouselController();

  // Main Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Backgroung image
          Image(
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            image: AssetImage("assets/Screen-04.png"),
          ),

          // Column having other widgets(buttons, text and, containers)
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: CarouselSlider(
                  carouselController: _controller,
                  items: imageSlider,
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _current = index;
                          },
                        );
                      },
                      enableInfiniteScroll: false,
                      reverse: false,
                      viewportFraction: 1,
                      height: 130),
                ),
              ),
              SizedBox(height: 0),

              // Displaying the dots according to ListItem
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return _current == index
                        ? Padding(
                            padding: EdgeInsets.only(left: 22),
                            child: Container(
                              height: 11,
                              width: 11,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple[800]),
                            ))
                        : Padding(
                            padding: EdgeInsets.only(left: 22),
                            child: Container(
                              height: 8,
                              width: 8,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                            ),
                          );
                  }).toList(),
                ),
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => _controller.previousPage(),
                      child: Container(
                        height: 45,
                        width: 100,
                        color: Colors.purple[800],
                        child: Center(
                            child: Text("PREV",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),

                    // Changing state of NEXT button with FINISH
                    _current == 2
                        ? GestureDetector(
                            onTap: () {
                              _controller.nextPage();
                              showAlertDialog(context);
                            },
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple[800], width: 1)),
                              child: Center(
                                  child: Text("Finish",
                                      style: TextStyle(
                                          color: Colors.purple[800]))),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage();
                            },
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple[800], width: 1)),
                              child: Center(
                                child: Text(
                                  "NEXT",
                                  style: TextStyle(
                                    color: Colors.purple[800],
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ],
      ),
    );
  }

  // Widget for displaying the text on the screen.
  static Widget texter(String heading) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 36, right: 36),
              child: Text(
                heading,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 36, left: 36),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "The first mate and his Skipper too will done their very comfortable in their belt total island nest to till the end. ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
