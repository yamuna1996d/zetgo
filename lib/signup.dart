import 'package:flutter/material.dart';
import 'package:zetgo/intro.dart';
class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  Widget crkl(clr, icn, rds) {
    return CircleAvatar(
      backgroundColor: clr,
      child: icn,
      radius: rds,
    );
  }

  Widget txtFd(String lbl, bool fr, double sf, Icon cn) {
    return Container(
      width: 300,
      child: TextField(
        obscureText: fr,
        decoration: InputDecoration(
          icon: cn,
          labelText: lbl,
        ),
      ),
    );
  }

  Widget txt(String txt, double sf, double tf, FontWeight wf, Color clr) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: sf,
          fontStyle: FontStyle.normal,
          fontWeight: wf,
          color: clr),
    );
  }

  Widget cnt(clr, icn) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(14, 226, 208, 1),
          Color.fromRGBO(96, 118, 227, 1)
        ]),
        borderRadius: BorderRadius.circular(75),
      ),
      child: icn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 90,top: 50),
              width: 150,
              height: 150,
              child: Image.asset("assets/h.png"),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 250.0, top: 5),
                    child: txt("Sign Up", 20, 20, FontWeight.bold, Colors.black),
                  ),
                  txtFd("Enter User Name", false, 40, Icon(Icons.person)),
                  txtFd("Enter Password", true, 50, Icon(Icons.lock)),
                  txtFd("Confirm Password", true, 50, Icon(Icons.lock))
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 250,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Color.fromRGBO(96, 118, 227, 1)
                      ]),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10.0,
                            spreadRadius: 2.0)
                      ]),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Stack(
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  color: Colors.white,
                  endIndent: MediaQuery.of(context).size.width * 0.62,
                  indent: 0.0,
                ),

              ],
            ),

            SizedBox(height: 20.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Old User? "),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedCB()));
              },
                child: Text("Sign in", style: TextStyle(color: Colors.blue),),
              )
            ])
          ],
        ),
      ),
    );
  }
}