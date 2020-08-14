// This fiile has the widget which is to be displayed then we click on the World in top navigation bar.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<String> _listitems = [
  "https://images.unsplash.com/photo-1426024084828-5da21e13f5dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1587372723630-cc6f6f661cdc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1587614222350-286dd1a0e619?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1564697259644-03cd5e7363fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1589353834625-b47ec0875dce?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
];

Widget world(context) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(builder: (context) => SingleArticle()),
      //   (Route<dynamic> route) => false,
      // );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SingleArticle()));
    },
    child: Container(
      child: Container(
          height: 500,
          // MediaQuery.of(context).size.height / 1.44,
          width: double.infinity,
          // MediaQuery.of(context).size.width,
          // Here the items for the pages related to home will be stored.
          child:
              // This is the widget having the things which are to be displayed inisde the world thing.
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              // Container(
              //   height: 70,
              //   padding: EdgeInsets.only(left: 0),
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     padding: EdgeInsets.all(5),
              //     children: [
              //       categories("World", Colors.red, NewsItems("")),
              //       categories("Politics", Colors.blue[800], SportsScreen()),
              //       categories("Tech", Colors.green[400], SportsScreen()),
              //       categories("Sports", Colors.amber[700], SportsScreen()),
              //       categories("Science", Colors.purple[300], SportsScreen()),
              //       categories("Business", Colors.brown[300], BusinessScreen()),
              //     ],
              //   ),
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Card(
                        elevation: 2,
                        color: Colors.transparent,
                        child: Center(
                          child: Container(
                            height: 150,
                            width: double.infinity - 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                                )),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 15, top: 10, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: 1 / 1.5,
                  crossAxisCount: 2,
                  padding: EdgeInsets.only(left: 18, right: 18),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listitems
                      .map(
                        (e) => Card(
                          // color: Colors.transparent,
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 185,
                                // MediaQuery.of(context).size.height / 4,
                                width: double.infinity,
                                // MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 2)
                                  ],
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: NetworkImage(e),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              // ),
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
                      )
                      .toList(),
                ),
              )
            ],
          )

          // This is working
          // ListView(
          //   children: [
          //     categories(_pageChanger, Colors.red, NewsItems("")),
          //     categories(
          //         "Politics", Colors.blue[800], SportsScreen()),
          //     categories("Tech", Colors.green[400], SportsScreen()),
          //     categories("Sports", Colors.amber[700], SportsScreen()),
          //     categories(
          //         "Science", Colors.purple[300], SportsScreen()),
          //     categories(
          //         "Business", Colors.brown[300], BusinessScreen()),
          //   ],
          // ),
          ),
    ),
  );
}

Widget singleArticle() {
  return Container(
      child: Center(
    child: Text("This is single article"),
  ));
}

class SingleArticle extends StatefulWidget {
  @override
  _SingleArticleState createState() => _SingleArticleState();
}

class _SingleArticleState extends State<SingleArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:Text("Live new",style:TextStyle(color:Colors.red))),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 3,
                            spreadRadius: 4)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://photographylife.com/wp-content/uploads/2009/12/20070909-Vail-033.jpg"),
                          fit: BoxFit.fill)),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red
                ),
              ),
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
              SizedBox(height: 15),
              Text(
                  "The first mate and his skipper on island nest to tille the end be enough to end the ship set ground on the shore of this uncharted desert isle with Gilligan the Skipper too the millionaire and his wife all of them had hair of gold like their mother the oungest one in curls flying away on a wing and a prayer. Who could it be? Believe it or not its just me. Here's the story of a lovely lady. ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      height: 1.2,
                      fontSize: 15,
                      fontWeight: FontWeight.w300)),
              SizedBox(height: 10),
              Text(
                  "The millionaire and his wife all of them had hair of gold like their mother the oungest one in curls flying away on a wing and a prayer. Who could it be? Believe it or not its just me. Here's the story of a lovely lady. ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      height: 1.2,
                      fontSize: 15,
                      fontWeight: FontWeight.w300)),
              Container(
                height: 200,
                // color: Colors.grey,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    horizontalListItems(context,
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ5BYINMzNVwYA96WRoAIJa8q1I4OkRHPBS4g&usqp=CAU"),
                    SizedBox(width: 10),
                    horizontalListItems(context,
                        "https://owenlloydphotography.com/wp/wp-content/gallery/dance/_DSC1613-Edit-Website.jpg"),
                    SizedBox(width: 10),
                    horizontalListItems(context,
                        "https://static-ssl.businessinsider.com/image/5cff0d0cba3a7323863f36a2-1280/avenger%20iron%20man.jp2"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                  "The millionaire and his wife all of them had hair of gold like their mother the oungest one in curls flying away on a wing and a prayer. ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      height: 1.2,
                      fontSize: 15,
                      fontWeight: FontWeight.w300)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "The first mate and his skipper on island nest to tille the end be enough to end the ship set ground on the shore of this uncharted desert isle with Gilligan the Skipper too the millionaire and his wife all of them had hair of gold like their mother the one in curls flying away on a wing and a prayer. ",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      height: 1.2,
                      fontSize: 15,
                      fontWeight: FontWeight.w300)),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey[600].withOpacity(0.7),
                height: 16,
              ),
              Container(
                height: 55,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        // color: Colors.purple,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://img.freepik.com/free-photo/handsome-young-businessman-shirt-eyeglasses_85574-6228.jpg?size=626&ext=jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 9, bottom: 8, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("John Marshall",
                              style: TextStyle(
                                  letterSpacing: -1,
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          Text(
                            "Author Name",
                            style: TextStyle(
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 82),
                    Container(
                      child: Center(
                          child: Text("Follow",
                              style: TextStyle(
                                  color: Colors.purple[800],
                                  fontWeight: FontWeight.w600,
                                  height: 1.4,
                                  letterSpacing: 1.5,
                                  fontSize: 16))),
                      // color: Colors.black,
                      height: 55,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.purple)),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[600].withOpacity(0.7),
                height: 16,
              ),
              SizedBox(height: 20),
              Text(
                "Related Articles",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    letterSpacing: 1.1,
                    height: 1.4),
              ),
              SizedBox(height: 5),
              verticalListItems(context),
              SizedBox(
                height: 10,
              ),
              verticalListItems(context),
              SizedBox(
                height: 10,
              ),
              verticalListItems(context),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [Icon(Icons.search, color: Colors.black)],
        centerTitle: true,
        title: Text("Single Article",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
                color: Colors.black)),
      ),
    );
  }

  Widget verticalListItems(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                    padding: const EdgeInsets.only(
                                        top: 4.0, right: 4),
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

  Widget horizontalListItems(context, image) {
    return Container(
        height: 20,
        width: 157,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(color: Colors.grey[300], blurRadius: 3, spreadRadius: 4)
            ],
            image: DecorationImage(
                image: NetworkImage(image), fit: BoxFit.cover)));
  }
}
