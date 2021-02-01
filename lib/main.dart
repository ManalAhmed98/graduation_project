import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'medicine.dart';
import 'input_page.dart';
import 'signUpPage.dart';
import 'elderlySignUp.dart';
import 'elderlyProfile.dart';
import 'watcherProfile.dart';
import 'firstPage.dart';

const nave = Color(0xff475B5A);
const white = Color(0xffF5F6F0);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FisrPage(),
      // WatcherProfilePage(),
      // elderlyProfilePage(),
      // addMedicinePage(),
      //elderlySignUpPage(),
      // InputPage(),
      // SignUpPage(),
      theme: ThemeData(
        primaryColor: nave,
        buttonTheme: ButtonThemeData(
          buttonColor: white,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        scaffoldBackgroundColor: white,
        // Color(0xff7A9294),
        // Color(0xff4C5F5B),
        // Color(0xffF5E7F0),
        accentColor: nave,
        fontFamily: 'Scheherazade',
        textTheme: TextTheme(
          headline1: TextStyle(
            color: white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: nave,
          centerTitle: true,
          textTheme: TextTheme(
              title: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
        ),
      ),
    );
  }
}
