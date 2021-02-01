import 'dart:ui';
import 'package:flutter/widgets.dart';

import 'AddText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'elderlySignUp.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: nave),
      body: Container(
        margin: EdgeInsets.fromLTRB(0.0, 30, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 25),
                Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                    color: nave,
                  ),
                ),
                Text(
                  'تسجيل المراقب',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: nave),
                ),
              ],
            ),
            Card(
              color: nave,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 25),
                      AddTextF(hintText: 'اسم المستخدم'),
                      SizedBox(height: 25),
                      AddTextF(
                        hintText: 'كلمة المرور',
                      ),
                      SizedBox(height: 25),
                      AddTextF(
                        hintText: 'البريد الالكتروني',
                      ),
                      SizedBox(height: 25),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => elderlySignUpPage()));
                        },
                        child: Text(
                          "إنشاء حساب",
                          style: TextStyle(fontSize: 30, color: nave),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // SizedBox(height: 15),

                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
