import 'package:flutter/material.dart';
import 'main.dart';

const textStyle = TextStyle(
  fontSize: 27.0,
  fontFamily: 'Scheherazade',
);

class AddTextF extends StatelessWidget {
  String hintText;
  AddTextF({@required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          hintText: (hintText),
          hintStyle: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              style: BorderStyle.solid,
            ),
          ),
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
