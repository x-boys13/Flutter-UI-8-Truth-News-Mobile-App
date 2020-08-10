import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //     body: Stack(
        //   children: [
        //     Image(fit:BoxFit.fill,
        //         image: AssetImage("assets/Screen-06.png"),
        //       ),

        //   ],
        // )

        //     //   Container(
        //     // decoration: BoxDecoration(
        //     //     image: DecorationImage(
        //     //         image: AssetImage("assets/Screen-06.png"), fit: BoxFit.cover)),
        //     // child: Column(
        //     //   mainAxisAlignment: MainAxisAlignment.end,
        //     //   crossAxisAlignment: CrossAxisAlignment.start,
        //     //   children: [
        //     //     Column(
        //     //       children: [
        //     //         Image(
        //     //           image: AssetImage("assets/Screen-06.png"),
        //     //         ),
        //     //       ],
        //     //     )
        //     //   ],
        //     // ),
        //     // )
        //     );

        // // return MaterialApp(
        // //   home: Container(
        // //     decoration: BoxDecoration(
        // //         image: DecorationImage(image: AssetImage("assets/Screen-06.png"))),
        // //     child: Scaffold(
        //         backgroundColor: Colors.transparent,
        //         body: Padding(
        //           padding: EdgeInsets.all(10),
        //           child:

        //               // Column(children: [

        //               //   Image(fit:BoxFit.cover,
        //               //       image: AssetImage("assets/Screen-06 (1).png"),
        //               //     ),
        //               //     Text("Sign up!",style:TextStyle(fontSize: 18,color:Colors.white))
        //               // ],
        //               // )
        //         //       ListView(
        //         //     children: [
        //         //       Container(
        //         //         child: Image(
        //         //           fit: BoxFit.cover,
        //         //           image: AssetImage("assets/Screen-06 (1).png"),
        //         //         ),
        //         //       ),
        //         //       Text("Sign up!",
        //         //           style: TextStyle(fontSize: 18, color: Colors.white))
        //         //     ],
        //         //   ),
        //         // )
        //         //  Column(
        //         //   mainAxisAlignment: MainAxisAlignment.start,
        //         //   children: [
        //         //     Container(
        //         //       height: 250,
        //         //       width: 250,decoration: BoxDecoration(
        //         //         image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/Screen-06 (1).png"))
        //         //       ),
        //         //       // child: Image(
        //         //       //   image: ,
        //         //       // ),
        //         //     ),

        //         //     Text("Sign up!",
        //         //         style: TextStyle(
        //         //           color: Colors.white,
        //         //           fontSize: 18,
        //         //         )),
        //         //     // Text("Hello world", style: TextStyle(color: Colors.white))
        //         //   ],
        //         // )
        //         ),
        //   ),
        // );

        Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            image: AssetImage("assets/Screen-06.png"),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image(image: AssetImage("assets/11.png"),),
                  SizedBox(height: 180),
                  Center(
                    child: Text(
                      "Sign up!",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24.0, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.white),
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white))),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24.0, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone",
                          hintStyle: TextStyle(color: Colors.white),
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24.0, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24.0, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white))),
                    ),
                  ),
                  SizedBox(height: 18),
                  FlatButton(
                      onPressed: () {},
                      child: Ink(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(91, 16, 91, 16),
                            child: Container(
                              child: Text(
                                "REGISTER NOW",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    letterSpacing: .3),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                            Colors.purple,
                            Colors.purple[700],
                            Colors.purple[800]
                          ])))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
