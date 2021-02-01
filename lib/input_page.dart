import 'dart:ui';
import 'package:flutter/widgets.dart';

import 'AddText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  'تسجيل دخول الاعضاء',
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
                      FlatButton(
                        onPressed: () {},
                        textColor: white,
                        child:
                            Text('إعادة تعيين كلمة المرور', style: textStyle),
                      ),
                      // SizedBox(height: 15),
                      RaisedButton(
                        onPressed: () {},
                        child: Text("تسجيل الدخول",
                            style: TextStyle(fontSize: 30, color: nave)),
                      ),
                      // SizedBox(height: 15),
                      FlatButton(
                        onPressed: () {
                          //forgot password screen
                        },
                        textColor: white,
                        child: Text('ليس لديك حساب؟ إنشاء حساب جديد',
                            style: textStyle),
                      ),
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
