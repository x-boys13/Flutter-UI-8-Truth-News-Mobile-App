import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  String appBarText;
  ProfileScreen(this.appBarText);
  @override
  _ProfileScreenState createState() => _ProfileScreenState(appBarText);
}

class _ProfileScreenState extends State<ProfileScreen> {
  String appBarText;

  _ProfileScreenState(this.appBarText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 2),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height / 3.5,
            //   width: MediaQuery.of(context).size.width,
            //   // width: 120,
            // decoration: BoxDecoration(
            //   color: Colors.red,
            //   borderRadius: BorderRadius.circular(4),
            //   boxShadow: [
            //     BoxShadow(color: Colors.grey, blurRadius: 2),
            //   ],
            // ),
            // ),
            Stack(children: [
              Container(
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.9,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1541701571234-ffe036ddf1d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 4),
                          ],
                        ),
                        // color: Colors.pink
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.6),
              Positioned(
                  top: 200,
                  child: Container(
                      color: Colors.transparent,
                      // decoration: BoxDecoration(image: DecorationImage(image: Net)),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 160),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Adam Gilchrist",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    height: 1.1),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("News Editor",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300)),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 120)),
              FractionalTranslation(
                translation: Offset(0.35, 1.44),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://png.pngtree.com/png-vector/20190321/ourmid/pngtree-vector-users-icon-png-image_856952.jpg"),
                    ),
                  ),
                  // color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
            ]),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: FaIcon(FontAwesomeIcons.percent,
                            color: Colors.purple[800]))),
                Expanded(
                  child: Text(
                    "Offers",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.5),
                  ),
                ),
                SizedBox(width: 215),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Expanded(child: Icon(Icons.arrow_forward_ios, size: 12)),
                )
              ],
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: FaIcon(FontAwesomeIcons.bell,
                        color: Colors.purple[800])),
                Expanded(
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.5),
                  ),
                ),
                SizedBox(width: 170),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward_ios, size: 12),
                )
              ],
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: FaIcon(FontAwesomeIcons.file,
                        color: Colors.purple[800])),
                Expanded(
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.5),
                  ),
                ),
                SizedBox(width: 120),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward_ios, size: 12),
                )
              ],
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: FaIcon(FontAwesomeIcons.ggCircle,
                        color: Colors.purple[800])),
                Expanded(
                  child: Text(
                    "Help & Support",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.5),
                  ),
                ),
                SizedBox(width: 150),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward_ios, size: 12),
                )
              ],
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: FaIcon(FontAwesomeIcons.signOutAlt,
                        color: Colors.purple[800])),
                Expanded(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.5),
                  ),
                ),
                SizedBox(width: 210),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward_ios, size: 12),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
