import 'package:flutter/material.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/widgets/sports.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/whatsHot.dart';

class DailyNews extends StatefulWidget {
  @override
  _DailyNewsState createState() => _DailyNewsState();
}

class _DailyNewsState extends State<DailyNews>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Text("Latest",
              style: TextStyle(
                  height: 1.4,
                  letterSpacing: 0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: 16)),
        ),
      )),
    ),
    Tab(
      child: Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Text("What's Hot?",
              style: TextStyle(
                  height: 1.4,
                  letterSpacing: 0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: 16)),
        ),
      )),
    ),
    Tab(
      child: Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Text("Featured",
              style: TextStyle(
                  height: 1.4,
                  letterSpacing: 0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: 16)),
        ),
      )),
    ),
    Tab(
      child: Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Text("Top Stories",
              style: TextStyle(
                  height: 1.4,
                  letterSpacing: 0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: 16)),
        ),
      )),
    ),
  ];

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [Icon(Icons.search, color: Colors.black)],
        centerTitle: true,
        title: Text("Daily News",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: Colors.black)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 5),
            child: TabBar(
              isScrollable: true,
              indicatorWeight: 3,
              labelPadding: EdgeInsets.all(0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.purple[800],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[600],
              tabs: myTabs,
              controller: _tabController,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: TabBarView(controller: _tabController, children: [
          tabBarItem(context),
          whatsHot(context),
          tabBarItem(context),
          tabBarItem(context),
        ]),
      ),
    );
  }

  Widget tabBarItem(BuildContext context) {
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
            verticalListItems(context),
            verticalListItems(context),
            verticalListItems(context)
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
        height: 150,
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
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
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
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 160,
                          color: Colors.transparent,
                          child: Text(
                              "The first mate and his skipper on insland nest to till the end be enough to end.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  height: 1,
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
}
