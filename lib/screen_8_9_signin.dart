import 'package:flutter/material.dart';
import 'package:flutter_ui_8_truth_new_mobile_app/screen_2_3_4_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                      "Login to continue",
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
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>CarousalScreen()));

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
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.purple,
                            Colors.purple[700],
                            Colors.purple[800]
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "----- Login with -----",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 0.3, fontSize: 18),
                  ),
                  SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: 45,
                            width: 150,
                            color: Color.fromRGBO(221, 75, 57, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.googlePlusG,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 7),
                                Text("GOGGLE+",
                                    style: (TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2,
                                        fontSize: 16)))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Container(
                            height: 45,
                            width: 150,
                            color: Color.fromRGBO(59, 89, 152, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.facebookF,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 7),
                                Text("FACEBOOK",
                                    style: (TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2,
                                        fontSize: 16)))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
