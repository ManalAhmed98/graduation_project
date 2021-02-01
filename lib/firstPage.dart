import 'dart:ui';
import 'AddText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'signUpPage.dart';
import 'input_page.dart';

class FisrPage extends StatefulWidget {
  @override
  _FisrPageState createState() => _FisrPageState();
}

class _FisrPageState extends State<FisrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.ibb.co/mb2NF89/Whats-App-Image-2021-01-31-at-11-01-36-AM.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    color: white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputPage()));
                    },
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 25,
                        color: nave,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                SizedBox(
                  width: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    color: white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      "انشاء حساب",
                      style: TextStyle(
                        fontSize: 25,
                        color: nave,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 130),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
