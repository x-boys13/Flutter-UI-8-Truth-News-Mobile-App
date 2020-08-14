import 'package:flutter/material.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/screen_2_3_4_carousel.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            image: AssetImage("assets/Screen-06 (2).png"),
            // image: AssetImage("assets/Screen-06.png"),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 165),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => CarousalScreen()));
                      },
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
