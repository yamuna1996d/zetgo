import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:zetgo/Login.dart';

class AnimatedCB extends StatefulWidget {
  @override
  _AnimatedCBState createState() => _AnimatedCBState();
}

class _AnimatedCBState extends State<AnimatedCB>
{


  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Login()
    )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              color: Colors.pink
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                 // child: Image.asset("assets/h.jpg"),
                ),
                Padding(padding: EdgeInsets.only(top: 60.0)),
                Text(
                    "Ready to explore??",
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

