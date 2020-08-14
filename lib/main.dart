import 'package:flutter/material.dart';
import 'screen_6_7_signup.dart';
import 'screen_8_9_signin.dart';
import 'screen_2_3_4_carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:MyHomePage()
      //  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.purple[900].withOpacity(0.97),
            Colors.purple[900]
          ], begin: Alignment.topRight, end: Alignment.bottomCenter)),
        ),
        Image(
          image: AssetImage("assets/1.png"),
        ),
        Positioned(
          bottom: 115,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.white)),
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(125, 16, 125, 16),
            elevation: 0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            },
            child: Text("Login",
                style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w800)),
          ),
        ),
        Positioned(
          bottom: 50,
          child: RaisedButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.white),
            ),
            color: Colors.purple[900],
            padding: EdgeInsets.fromLTRB(115, 16, 115, 16),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            },
            child: Text("Register",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800)),
          ),
        ),
      ],
    ));
  }
}
