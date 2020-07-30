import 'package:flutter/material.dart';
import 'package:zetgo/Views/detail.dart';
import 'package:zetgo/Views/nexcours.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zetgo/srcs/assets.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/coursePage' : (context)=>
            //CoursePage()
            DetailPage(DEV(firstName:null, lastName: null, avatar: null, backdropPhoto: null, location: null, biography: null,videos:<Video>[
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
        ]))
      },
    );
  }
}
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Hello Friend", style:GoogleFonts.dancingScript(
            color: Colors.red,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            fontSize: 25),),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/profilePic.png')
                      )
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Text('What do you \nwant to \nlearn today?',
              style: GoogleFonts.notoSerif(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('Language', 'English', 'img1', Color(0xffff6a65), Colors.black12),
                          SizedBox(height: 20,),
                          courseWidget('Language', 'Hindi', 'img2', Color(0xffe9eefa), Colors.white),
                        ],
                      ),
                    ),
                    
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(height: 50,),
                          courseWidget('Language', 'Tamil', 'img3', Color(0xffe9eefa), Colors.white),
                          SizedBox(height: 20,),
                          courseWidget('Language', 'French', 'img4', Color(0xffbdcddfa), Color(0xffcedaff)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container courseWidget(String category, String title, String img, Color categoryColor, Color bgColor)
  {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: (){openCoursePage('$img', '$title');},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),

              ),
              child: Text('$category', style: TextStyle(
                  color: (categoryColor == Color(0xffe9eefa) ? Color(0xff2657ce) : Colors.white)
              ),),
            ),
            SizedBox(height: 10,),
            Text('$title', style: TextStyle(
              color: (bgColor == Color(0xffff5954)) ? Colors.white : Colors.black,
              fontSize: 20,
              height: 1,
            ),),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (bgColor == Color(0xffff5954)) ? Colors.red : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == Color(0xffff5954)) ? Colors.white.withOpacity(0.5) : Color(0xff2657ce).withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/$img.png'),
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void openCoursePage(String img, String title)
  {
    Navigator.pushNamed(context, '/coursePage', arguments: {'img':'$img', 'title':'$title'});
  }
}