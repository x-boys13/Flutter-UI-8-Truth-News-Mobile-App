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
      // text: 'Persol',
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
      // text: 'Persol',
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
      // text: 'Persol',
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
      // text: 'Persol',
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
              // indicator: Decoration(),
              isScrollable: true,
              indicatorWeight: 3,
              labelPadding: EdgeInsets.all(0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.purple[800],
              labelColor: Colors.black, unselectedLabelColor: Colors.grey[600],
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
            verticalListItems(context),verticalListItems(context)
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
        // color: Colors.red,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white30,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey[300],
            //     blurRadius: 4,
            //     spreadRadius: 3,
            //   )
            // ]
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 0.0),
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
                                  // SizedBox(width: 30),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 4.0),
                                  //   child: FaIcon(
                                  //     FontAwesomeIcons.heart,
                                  //     size: 18,
                                  //   ),
                                  // ),
                                  // SizedBox(width: 5),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       top: 4.0, right: 4),
                                  //   child: Icon(
                                  //     Icons.share,
                                  //     size: 18,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          
                        ),SizedBox(height:15),
                        Container(
                            // height: MediaQuery.of(context).size.height,
                            width: 160,
                            color: Colors.transparent,
                            child: Text(
                                "The first mate and his skipper on insland nest to till the end be enough to end.",
                                textAlign:TextAlign.left,style: TextStyle(
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
                // color: Colors.pink,
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

// class SingleArticle extends StatefulWidget {
//   @override
//   _SingleArticleState createState() => _SingleArticleState();
// }

// class _SingleArticleState extends State<SingleArticle> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title:Text("Live new",style:TextStyle(color:Colors.red))),

//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       boxShadow: [
//                         BoxShadow(
//                             color: Colors.grey[300],
//                             blurRadius: 3,
//                             spreadRadius: 4)
//                       ],
//                       image: DecorationImage(
//                           image: NetworkImage(
//                               "https://photographylife.com/wp-content/uploads/2009/12/20070909-Vail-033.jpg"),
//                           fit: BoxFit.fill)),
//                   height: 220,
//                   width: MediaQuery.of(context).size.width,
//                   // color: Colors.red
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Come and dance on our floor",
//                       style: TextStyle(
//                           letterSpacing: -1,
//                           color: Colors.black,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w400)),
//                   SizedBox(width: 75),
//                   FaIcon(
//                     FontAwesomeIcons.heart,
//                     size: 18,
//                   ),
//                   SizedBox(width: 5),
//                   Icon(
//                     Icons.share,
//                     size: 18,
//                   ),
//                 ],
//               ),
//               Text(
//                 "7th Aug  -  3 mins read",
//                 style: TextStyle(
//                   letterSpacing: -0.5,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black.withOpacity(0.7),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Text(
//                   "The first mate and his skipper on island nest to tille the end be enough to end the ship set ground on the shore of this uncharted desert isle with Gilligan the Skipper too the millionaire and his wife all of them had hair of gold like their mother the oungest one in curls flying away on a wing and a prayer. Who could it be? Believe it or not its just me. Here's the story of a lovely lady. ",
//                   style: TextStyle(
//                       color: Colors.black.withOpacity(0.7),
//                       height: 1.2,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w300)),
//               SizedBox(height: 10),
//               Text(
//                   "The millionaire and his wife all of them had hair of gold like their mother the oungest one in curls flying away on a wing and a prayer. Who could it be? Believe it or not its just me. Here's the story of a lovely lady. ",
//                   style: TextStyle(
//                       color: Colors.black.withOpacity(0.7),
//                       height: 1.2,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w300)),
//               Container(
//                 height: 200,
//                 // color: Colors.grey,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     horizontalListItems(context,
//                         "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ5BYINMzNVwYA96WRoAIJa8q1I4OkRHPBS4g&usqp=CAU"),
//                     SizedBox(width: 10),
//                     horizontalListItems(context,
//                         "https://owenlloydphotography.com/wp/wp-content/gallery/dance/_DSC1613-Edit-Website.jpg"),
//                     SizedBox(width: 10),
//                     horizontalListItems(context,
//                         "https://static-ssl.businessinsider.com/image/5cff0d0cba3a7323863f36a2-1280/avenger%20iron%20man.jp2"),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                   "The millionaire and his wife all of them had hair of gold like their mother the oungest one in curls flying away on a wing and a prayer. ",
//                   style: TextStyle(
//                       color: Colors.black.withOpacity(0.7),
//                       height: 1.2,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w300)),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                   "The first mate and his skipper on island nest to tille the end be enough to end the ship set ground on the shore of this uncharted desert isle with Gilligan the Skipper too the millionaire and his wife all of them had hair of gold like their mother the one in curls flying away on a wing and a prayer. ",
//                   style: TextStyle(
//                       color: Colors.black.withOpacity(0.7),
//                       height: 1.2,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w300)),
//               SizedBox(height: 10),
//               Divider(
//                 color: Colors.grey[600].withOpacity(0.7),
//                 height: 16,
//               ),
//               Container(
//                 height: 55,
//                 // color: Colors.red,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 4,
//                     ),
//                     Container(
//                         height: 50,
//                         width: 50,
//                         // color: Colors.purple,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://img.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg?size=626&ext=jpg"),
//                               fit: BoxFit.cover),
//                           shape: BoxShape.circle,
//                         )),
//                     Padding(
//                       padding: EdgeInsets.only(top: 9, bottom: 8, left: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("John Marshall",
//                               style: TextStyle(
//                                   letterSpacing: -1,
//                                   color: Colors.black,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400)),
//                           Text(
//                             "Author Name",
//                             style: TextStyle(
//                               letterSpacing: -0.5,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black.withOpacity(0.7),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 82),
//                     Container(
//                       child: Center(
//                           child: Text("Follow",
//                               style: TextStyle(
//                                   color: Colors.purple[800],
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.4,
//                                   letterSpacing: 1.5,
//                                   fontSize: 16))),
//                       // color: Colors.black,
//                       height: 55,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           border: Border.all(width: 2, color: Colors.purple)),
//                     )
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey[600].withOpacity(0.7),
//                 height: 16,
//               ),
//               SizedBox(height: 20),
//               Text(
//                 "Related Articles",
//                 style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 20,
//                     letterSpacing: 1.1,
//                     height: 1.4),
//               ),
//               SizedBox(height: 5),
//               verticalListItems(context),
//               SizedBox(
//                 height: 10,
//               ),
//               verticalListItems(context),
//               SizedBox(
//                 height: 10,
//               ),
//               verticalListItems(context),
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.white30,
//         elevation: 0,
//         leading: Icon(Icons.menu, color: Colors.black),
//         actions: [Icon(Icons.search, color: Colors.black)],
//         centerTitle: true,
//         title: Text("Single Article",
//             style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 24,
//                 color: Colors.black)),
//       ),
//     );
//   }

//   Widget verticalListItems(context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 100,
//         // color: Colors.red,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(4),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey[300],
//                 blurRadius: 4,
//                 spreadRadius: 3,
//               )
//             ]),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
//               child: AspectRatio(
//                 aspectRatio: 1,
//                 child: Container(
//                   // height: MediaQuery.of(context).size.height,
//                   // width: 75,
//                   // color: Colors.transparent,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: NetworkImage(
//                               "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1/womensbikerace-0-1521133202.jpg"),
//                           fit: BoxFit.cover)),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
//               child: AspectRatio(
//                 aspectRatio: 2.6 / 1,
//                 child: Container(
//                     // height: MediaQuery.of(context).size.height,
//                     // width: 75,
//                     color: Colors.transparent,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: AspectRatio(
//                             aspectRatio: 2.6 / 0.48,
//                             child: Container(
//                               // height: MediaQuery.of(context).size.height,
//                               // width: 75,
//                               color: Colors.transparent,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(top: 0.0),
//                                         child: Text("Life Speed Racered",
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.w500,
//                                                 fontSize: 17,
//                                                 letterSpacing: -1)),
//                                       ),
//                                       Text(
//                                         "7th Aug  -  3 mins read",
//                                         style: TextStyle(
//                                           letterSpacing: -0.5,
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 13,
//                                           color: Colors.black.withOpacity(0.7),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(width: 30),
//                                   Padding(
//                                     padding: const EdgeInsets.only(top: 4.0),
//                                     child: FaIcon(
//                                       FontAwesomeIcons.heart,
//                                       size: 18,
//                                     ),
//                                   ),
//                                   SizedBox(width: 5),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 4.0, right: 4),
//                                     child: Icon(
//                                       Icons.share,
//                                       size: 18,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         AspectRatio(
//                           aspectRatio: 2.6 / 0.42,
//                           child: Container(
//                             // height: MediaQuery.of(context).size.height,
//                             // width: 75,
//                             color: Colors.transparent,
//                             child: Text(
//                                 "The first mate and his skipper on insland nest to till the end",
//                                 style: TextStyle(
//                                     color: Colors.grey[800],
//                                     height: 1.2,
//                                     fontWeight: FontWeight.w300)),
//                           ),
//                         ),
//                       ],
//                     )),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget horizontalListItems(context, image) {
//     return Container(
//         height: 20,
//         width: 157,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(4),
//             boxShadow: [
//               BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 4)
//             ],
//             image: DecorationImage(
//                 image: NetworkImage(image), fit: BoxFit.cover)));
//   }
// }
