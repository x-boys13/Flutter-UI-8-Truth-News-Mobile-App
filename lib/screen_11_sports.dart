// This screen deals with the top colourful navigation bar for opening different pages related to categories.

import 'package:flutter/material.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/widgets/business.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/widgets/politics.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/widgets/sports.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/widgets/tech.dart';
import 'widgets/science.dart';
import 'widgets/world.dart';

class SportsScreen extends StatefulWidget {
  @override
  _SportsScreenState createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  void iniState() {
    setState(() {
      super.initState();
      print("Selected");
      _pageWidget = world();
    });
  }

  String _pageChanger = "World";
  Widget _pageWidget = world();
  final List<String> _listitems = [
    "https://images.unsplash.com/photo-1426024084828-5da21e13f5dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587372723630-cc6f6f661cdc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587614222350-286dd1a0e619?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1564697259644-03cd5e7363fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1589353834625-b47ec0875dce?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),

        // This will be displaying the horizontal scrollable listview.
        Container(
          height: 70,
          padding: EdgeInsets.only(left: 0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5),
            children: [
              categories(
                "World",
                Colors.red,
              ),
              categories(
                "Politics",
                Colors.blue[800],
              ),
              categories(
                "Tech",
                Colors.green[400],
              ),
              categories(
                "Sports",
                Colors.amber[700],
              ),
              categories(
                "Science",
                Colors.purple[300],
              ),
              categories(
                "Business",
                Colors.brown[300],
              ),
            ],
          ),
        ),
        _pageWidget
      ],
    ));
  }

  Future<Widget> returning() async {
    // ignore: await_only_futures
    setState(() {
      _pageWidget = world();
    });

    return _pageWidget;
  }

  Widget categories(text, color) {
    return GestureDetector(
      onTap: () {
        switch (text) {
          case "World":
            {
              print("Selected");
              setState(() {
                _pageChanger = "World";
                _pageWidget = world();
              });
            }
            break;
          case "Politics":
            {
              setState(() {
                _pageChanger = "Politics";
                _pageWidget = politics(context);
              });
            }
            break;
          case "Tech":
            {
              setState(() {
                _pageChanger = "Tech";
                _pageWidget = tech(context);
              });
            }
            break;
          case "Sports":
            {
              setState(() {
                _pageChanger = "Sports";
                _pageWidget = sports(context);
              });
            }
            break;
          case "Science":
            {
              setState(() {
                _pageChanger = "Science";
                _pageWidget = science(context);
              });
            }
            break;
          case "Business":
            {
              setState(() {
                _pageChanger = "Business";
                _pageWidget = Container(
                  child: Container(
                      height: MediaQuery.of(context).size.height / 1.44,
                      width: MediaQuery.of(context).size.width,
                      child: business(context)),
                );
              });
            }
            break;
          default:
            {
              setState(() {
                _pageChanger = "World";
                _pageWidget = world();
              });
            }
            break;
        }
      },
      child: AspectRatio(
        aspectRatio: 1.5 / 1,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)]),
          child: Align(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}
