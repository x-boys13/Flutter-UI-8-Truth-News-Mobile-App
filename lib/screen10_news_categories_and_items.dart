// This screen is dealing with the bottom navigation bar which has four options.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen_11_sports.dart';
import 'screen_19_profile.dart';
import 'screen_18_liked.dart';
import 'screen_17_live_news.dart';

class NewsItems extends StatefulWidget {
  // NewsItems({Key key}):super(key:key);
  String snackBarText;

  NewsItems(this.snackBarText);
  @override
  _NewsItemsState createState() => _NewsItemsState(snackBarText);
}

class _NewsItemsState extends State<NewsItems> {
  String screenTitle = "World";
  String snackBarText;
  Widget _pageWidget;
  _NewsItemsState(this.snackBarText);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    print(value);

    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  int _selectItem = 0;
  final List<Widget> _widgetOptions = [
    SportsScreen(),
    LiveNewsScreen(),
    LikedScreen(),
    ProfileScreen("Profile")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectItem = index;
    });
    switch (_selectItem) {
      case 0:
        {
          screenTitle = "World";
        }
        break;
      case 1:
        {
          screenTitle = "Live News";
        }
        break;
      case 2:
        {
          screenTitle = "Favourites";
        }
        break;
      case 3:
        {
          screenTitle = "Profile";
        }
        break;
      default:
        {
          screenTitle = "World";
        }
        break;
    }
  }

  final List<String> _listitems = [
    "https://images.unsplash.com/photo-1426024084828-5da21e13f5dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587372723630-cc6f6f661cdc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587614222350-286dd1a0e619?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1564697259644-03cd5e7363fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1589353834625-b47ec0875dce?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ];

  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => showInSnackBar(snackBarText));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.home,
                ),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.white),),
                ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.playCircle,
                ),
                title: Container()
                // Text("ipone", style: TextStyle(color: Colors.black,),),
                ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.heart,
                ),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.black),),
                ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userCircle,
                ),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.transparent)),
                ),
          ],
          currentIndex: _selectItem,
          selectedItemColor: Colors.purple[800],
          unselectedItemColor: Colors.grey.withOpacity(0.8),
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black),
          actions: [Icon(Icons.search, color: Colors.black)],
          centerTitle: true,
          title: Text(screenTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Colors.black)),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectItem),
        ));
  }
}
