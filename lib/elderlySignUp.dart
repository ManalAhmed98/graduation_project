import 'dart:ui';
import 'package:flutter/widgets.dart';

import 'AddText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'medicine.dart';

class elderlySignUpPage extends StatefulWidget {
  @override
  _elderlySignUpPageState createState() => _elderlySignUpPageState();
}

class _elderlySignUpPageState extends State<elderlySignUpPage> {
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
                  'تسجيل كبير السن',
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
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'كلمة المرور',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'البريد الالكتروني',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'العمر',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'الطول',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'الوزن',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'الأمراض المزمنة',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'مواضيع تثير اهتمام كبير السن',
                      ),
                      SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => addMedicinePage()));
                        },
                        child: Text(
                          "إنشاء حساب",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
