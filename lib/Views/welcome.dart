import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zetgo/Views/Chat.dart';
import 'package:zetgo/Views/detail.dart';
import 'package:zetgo/Views/settings.dart';
import 'package:zetgo/srcs/assets.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  int selectedIndex = 0;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.black87],
                  begin: Alignment.topRight,
                  end: Alignment.center),
          ),
        ),
        title: Text(title,
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18.0,
                fontWeight: FontWeight.bold)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                
              }),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.black87],
                      begin: Alignment.topRight,
                      end: Alignment.center),
                  borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0))),
              height: 150.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/pinf.png',
                    height: 50.0,
                    width: 50.0,
                  ),

                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0.0, -30),
//              child: Container(
//                margin: EdgeInsets.symmetric(horizontal: 50.0),
//                height: 20.0,
//                decoration: BoxDecoration(color: Colors.deepPurpleAccent,
//    borderRadius: BorderRadius.only(
//    topLeft: const Radius.circular(30.0),
//    bottomRight: const Radius.circular(30.0),
//    bottomLeft: const Radius.circular(30.0),
//    topRight: const Radius.circular(30.0))
//                ),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Text(
//                      "Choose one",
//                      style: TextStyle(
//                          color: Colors.white, fontWeight: FontWeight.bold),
//                    )
//                  ],
//                ),
//              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              DetailPage(DEV(firstName:null, lastName: null, avatar: null, backdropPhoto: backdrop, location: null, biography: null,videos:<Video>[
                          Video(
                          title: 'Learn English Intro',
                            thumbnail: sidVideoThumbs[0],
                            url: 'https://www.youtube.com/watch?v=IUTRRedYWgw&vl=en',
                          ),
                            Video(
                              title: 'Learn English part 1',
                              thumbnail: sidVideoThumbs[1],
                              url: 'https://www.youtube.com/watch?v=06qoTsKYWKE',
                            ),
                          ]))));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0),),
                          ), child:Center(child: Text("English")) ,
                        ),
                      ),

                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0),),
                        ), child:Center(child: Text("Tamil")) ,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0),),
                            ), child:Center(child: Text("Hindi")) ,
                          ),

                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0),),
                            ), child:Center(child: Text("French")) ,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

            ),

          ],
        ),
//    drawer: Drawer(
//        // Add a ListView to the drawer. This ensures the user can scroll
//        // through the options in the Drawer if there isn't enough vertical
//        // space to fit everything.
//        child: ListView(
//          // Important: Remove any padding from the ListView.
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            DrawerHeader(
//              child: Text('Drawer Header'),
//              decoration: BoxDecoration(
//                color: Colors.blue,
//              ),
//            ),
//            ListTile(
//              title: Text('My Account'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//            ),
//            ListTile(
//              title: Text('Order History'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//            ),
//            ListTile(
//              title: Text('Reservation History'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//            )
//          ],
//        ),
      ),
    );
  }

}
