import 'dart:ui';
import 'package:flutter/widgets.dart';

import 'AddText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class addMedicinePage extends StatefulWidget {
  @override
  _addMedicinePagePageState createState() => _addMedicinePagePageState();
}

class _addMedicinePagePageState extends State<addMedicinePage> {
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
                  'اضافة الادوية',
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
                      SizedBox(height: 20),
                      AddTextF(hintText: 'اسم الدواء'),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'الجرعة',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'تاريخ بداية تناول الدواء',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'تاريخ نهاية تناول الدواء',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'موعد تناول الدواء',
                      ),
                      SizedBox(height: 20),
                      AddTextF(
                        hintText: 'وصف الدواء',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'اضافة صورة للدواء',
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.right,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add_a_photo_outlined,
                            size: 60,
                            color: nave,
                          ),
                          onPressed: () {}),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          RaisedButton(
                            onPressed: () {},
                            child: Text(
                              " إضافة الدواء   ",
                              style: TextStyle(fontSize: 26),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(width: 50),
                          RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "إضافة دواء اخر",
                              style: TextStyle(fontSize: 26),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
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
