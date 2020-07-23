import 'package:flutter/material.dart';
import 'package:zetgo/intro.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AnimatedCB(),
      ),
    );
  }
}
