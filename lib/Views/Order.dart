import 'package:flutter/material.dart';
import 'package:zetgo/Views/Chat.dart';
import 'package:zetgo/srcs/roundedcontainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/cart1.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Payment Methods",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 30.0),
            RoundedContainer(
              color: Colors.black12,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.creditCard,
                  color: Colors.red,
                ),
                title: Text("Credit Card or Debit Card"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            RoundedContainer(
              color: Colors.black12,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.googleWallet,
                  color: Colors.red,
                ),
                title: Text("Google Pay"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
              },
              child: RoundedContainer(
                color: Colors.black12,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.applePay,
                    color: Colors.red,
                  ),
                  title: Text("Apple Pay"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: RaisedButton(
                elevation: 0,
                padding: const EdgeInsets.all(24.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text("Continue"),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}