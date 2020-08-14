// This screen is dealing with the bottom navigation bar which has four options.

import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen_11_sports.dart';
import 'screen_19_profile.dart';
import 'screen_18_liked.dart';
import 'screen_17_live_news.dart';
import 'screen_13_14_daily news.dart';

// TODO:Snackbar to be shown
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
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
    print("Tapped");
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

  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => showInSnackBar(snackBarText));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white30,
        //   elevation: 0,
        //   leading: Icon(Icons.menu, color: Colors.black),
        //   actions: [Icon(Icons.search, color: Colors.black)],
        //   centerTitle: true,
        //   title: Text(screenTitle,
        //       style: TextStyle(
        //           fontWeight: FontWeight.w800,
        //           fontSize: 24,
        //           color: Colors.black)),
        // ),
        key: _scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                activeIcon:
                    FaIcon(FontAwesomeIcons.home, color: Colors.purple[800]),
                icon: FaIcon(FontAwesomeIcons.home, color: Colors.grey[600]),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.white),),
                ),
            BottomNavigationBarItem(
                activeIcon: FaIcon(FontAwesomeIcons.playCircle,
                    color: Colors.purple[800]),
                icon: FaIcon(FontAwesomeIcons.playCircle,
                    color: Colors.grey[600]),
                title: Container()
                // Text("ipone", style: TextStyle(color: Colors.black,),),
                ),
            BottomNavigationBarItem(
                activeIcon:
                    FaIcon(FontAwesomeIcons.heart, color: Colors.purple[800]),
                icon: FaIcon(FontAwesomeIcons.heart, color: Colors.grey[600]),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.black),),
                ),
            BottomNavigationBarItem(
                activeIcon: FaIcon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.purple[800],
                ),
                icon: FaIcon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.grey[600],
                ),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.transparent)),
                ),
            BottomNavigationBarItem(
                activeIcon:
                    FaIcon(FontAwesomeIcons.clock, color: Colors.purple[800]),
                icon: FaIcon(FontAwesomeIcons.clock, color: Colors.grey[600]),
                title: Container()
                // Text("Home", style: TextStyle(color: Colors.black),),
                ),
          ],
          // backgroundColor: Colors.purple,
          // fixedColor: Colors.red,
          // currentIndex: _selectItem,fixedColor: null,
          // selectedItemColor: Colors.purple[800],
          // unselectedItemColor: Colors.grey.withOpacity(0.8),
          // onTap: _onItemTapped,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
        ),
        // body: Center(
        //   child: _widgetOptions.elementAt(_selectItem),
        // )
        body: Center(
          child: _widgetOptions.elementAt(_selectItem),
        ),
      ),
      children: [
        SportsScreen(),
        LiveNewsScreen(),
        LikedScreen(),
        ProfileScreen("Profile"),
        DailyNews(),
      ],
    );
  }
}

// return Scaffold(
//     bottomNavigationBar: BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(
//             icon: FaIcon(
//               FontAwesomeIcons.home,
//             ),
//             title: Container()
//             // Text("Home", style: TextStyle(color: Colors.white),),
//             ),
//         BottomNavigationBarItem(
//             icon: FaIcon(
//               FontAwesomeIcons.playCircle,
//             ),
//             title: Container()
//             // Text("ipone", style: TextStyle(color: Colors.black,),),
//             ),
//         BottomNavigationBarItem(
//             icon: FaIcon(
//               FontAwesomeIcons.heart,
//             ),
//             title: Container()
//             // Text("Home", style: TextStyle(color: Colors.black),),
//             ),
//         BottomNavigationBarItem(
//             icon: FaIcon(
//               FontAwesomeIcons.userCircle,
//             ),
//             title: Container()
//             // Text("Home", style: TextStyle(color: Colors.transparent)),
//             ),
//       ],
//       currentIndex: _selectItem,
//       selectedItemColor: Colors.purple[800],
//       unselectedItemColor: Colors.grey.withOpacity(0.8),
//       onTap: _onItemTapped,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//     ),
//     key: _scaffoldKey,
//     appBar: AppBar(
//       backgroundColor: Colors.white30,
//       elevation: 0,
//       leading: Icon(Icons.menu, color: Colors.black),
//       actions: [Icon(Icons.search, color: Colors.black)],
//       centerTitle: true,
//       title: Text(screenTitle,
//           style: TextStyle(
//               fontWeight: FontWeight.w800,
//               fontSize: 24,
//               color: Colors.black)),
//     ),
//     body: Center(
//       child: _widgetOptions.elementAt(_selectItem),
//     ));
