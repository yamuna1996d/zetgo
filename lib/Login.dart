import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetgo/Views/settings.dart';
import 'package:zetgo/Views/welcome.dart';
import 'package:zetgo/signup.dart';
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;


  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  Widget crkl(clr, icn, rds) {
    return CircleAvatar(
      backgroundColor: clr,
      child: icn,
      radius: rds,
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
  TextEditingController txtr =TextEditingController();
  TextEditingController pass=TextEditingController();
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 50.0,
                        spreadRadius: 1.0)
                  ],
                  color: Colors.white),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 250.0, top: 5),
                    child: txt("Login", 20, 20, FontWeight.bold, Colors.black),
                  ),
                  TextField(
                    controller: txtr,
                    decoration: InputDecoration(
                      hintText: "Enter Email or Phone number",
                      prefixIcon: Icon(Icons.perm_identity,color: Colors.red,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),borderSide: new BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                          borderSide:BorderSide(color: Colors.red,width: 2) ),
                    ),
                  ),

                  TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.lock,color: Colors.red,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                          borderSide:BorderSide(color: Colors.red,) ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                          borderSide:BorderSide(color: Colors.red,width: 2) ),
                      suffixIcon:  IconButton(
                        color: Colors.red,
                        onPressed: _toggleVisibility,
                        icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                      ) ,

                    ),
                    obscureText:  _isHidden,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text("forgot password?",
                          style: TextStyle(color: Colors.blue))),
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.black87
                      ]),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
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
              Text("New User? "),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
              },
                 child: Text("Sign up", style: TextStyle(color: Colors.blue),),
              )
            ])
          ],
        ),
      ),
    );
  }
}