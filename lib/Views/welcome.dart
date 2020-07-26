import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

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
      bottomNavigationBar: BottomNavCustom(
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
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0),),
                        ), child:Center(child: Text("English")) ,
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

class BottomNavCustom extends StatefulWidget {
  @override
  _BottomNavCustomState createState() => _BottomNavCustomState();
}

class _BottomNavCustomState extends State<BottomNavCustom> {
  int selectedIndex = 0;
  Color backgroundColorNav = Colors.white;

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), Text('Home'), Colors.deepPurpleAccent),
    NavigationItem(Icon(Icons.chat), Text('Chat'), Colors.pinkAccent),
    NavigationItem(Icon(Icons.person_outline), Text('Result'), Colors.green),
    NavigationItem(Icon(Icons.notifications), Text('Notification'), Colors.blueAccent),
    NavigationItem(Icon(Icons.settings), Text('Setting'), Colors.amberAccent),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      height: 50,
      width: isSelected ? 120 : 50,
      padding: isSelected ? EdgeInsets.only(left: 16, right: 16) : null,
      decoration: isSelected
          ? BoxDecoration(
              color: item.color,
              borderRadius: BorderRadius.all(Radius.circular(50)))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                  size: 24,
                  color: isSelected ? backgroundColorNav : Colors.black,
                ),
                child: item.icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: isSelected
                    ? DefaultTextStyle.merge(
                        style: TextStyle(color: backgroundColorNav),
                        child: item.title)
                    : Container(),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          var itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = itemIndex;
              });
            },
            child: _buildItem(item, selectedIndex == itemIndex),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;
  final Color color;

  NavigationItem(this.icon, this.title, this.color);
}
