import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Views/welcome.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  bool _isHidden = true;

  void _toggleVisibility() {
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

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController pass = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 90, top: 50),
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
                          color: Colors.white, blurRadius: 50.0, spreadRadius: 1.0)
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
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        hintText: "Enter Email or Phone number",
                        prefixIcon: Icon(
                          Icons.perm_identity,
                          color: Colors.red,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: new BorderSide(color: Colors.red)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.red, width: 2)),
                      ),
                    ),
                    TextField(
                      controller: pass,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.red, width: 2)),
                        suffixIcon: IconButton(
                          color: Colors.red,
                          onPressed: _toggleVisibility,
                          icon: _isHidden
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                      ),
                      obscureText: _isHidden,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 50.0,
                    child: FlatButton(
                      onPressed: () {
                        _signIn();
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        gradient:
                        LinearGradient(colors: [Colors.red, Colors.black87]),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10.0,
                              spreadRadius: 2.0)
                        ]),
                  ),
                ],
              ),
            ])));
  }

  void _signIn() async {
    String email = emailcontroller.text.trim();
    String password = pass.text;
    if (email.isNotEmpty && password.isNotEmpty) {
      _auth.createUserWithEmailAndPassword(email: email, password: password)
          .then((user){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'App',)));
      }).catchError((e){
        showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Text("Error"),
                content: Text("${e.message}"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Cancel"),
                    onPressed: () {
                      emailcontroller.text = "";
                      pass.text = "";

                      Navigator.of(ctx).pop();
                    },
                  )
                ],
              );
            });
      });
    }
    else {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text("Error"),
              content: Text("Please provide email and password......!"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    emailcontroller.text = "";
                    pass.text = "";

                    Navigator.of(ctx).pop();
                  },
                )
              ],
            );
          });
    }
    _auth.signInWithEmailAndPassword(email: null, password: null);
  }
}

