import 'package:flutter/material.dart';
import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:zetgo/Views/Chat.dart';
import 'package:zetgo/Views/settings.dart';
import 'package:zetgo/Views/welcome.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(title: 'app',),
    ChatScreen(),
    SettingsPage(),
    ChatScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    bottomNavigationBar: BubbledNavigationBar(
    defaultBubbleColor: Colors.blue,
    onTap: (index) {
      setState(() {
        selectedIndex = index;
      });
    },
    items: <BubbledNavigationBarItem>[
      BubbledNavigationBarItem(
        icon:       Icon(Icons.home, size: 20, color: Colors.red),
        activeIcon: Icon(Icons.home, size: 20, color: Colors.white),
        title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
      BubbledNavigationBarItem(
        icon:       Icon(Icons.chat, size: 20, color: Colors.purple),
        activeIcon: Icon(Icons.chat, size: 20, color: Colors.white),
        title: Text('Chat', style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
      BubbledNavigationBarItem(
        icon:       Icon(Icons.settings, size: 20, color: Colors.teal),
        activeIcon: Icon(Icons.settings, size: 20, color: Colors.white),
        title: Text('Settings', style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
      BubbledNavigationBarItem(
        icon:       Icon(Icons.person_outline, size: 20, color: Colors.cyan),
        activeIcon: Icon(Icons.person, size: 20, color: Colors.white),
        title: Text('Result', style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
      BubbledNavigationBarItem(
        icon:       Icon(Icons.notifications, size: 20, color: Colors.teal),
        activeIcon: Icon(Icons.notifications, size: 20, color: Colors.white),
        title: Text('Notification', style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
    ],
    ),
    body:_widgetOptions.elementAt(selectedIndex),
    );
  }
}
