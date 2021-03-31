import 'package:cloud_firestore/cloud_firestore.dart';
import '../customizedWidgets/Constants.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
class MessageBubble extends StatelessWidget {
  final String messsage;
  final userName;
  final bool isMe;
  final Key key;
  MessageBubble(this.messsage,this.userName, this.isMe,this.key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe? MainAxisAlignment.start: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMe? nave: yellow,
            borderRadius: BorderRadius.only(
             //  topLeft: Radius.circular(30.0),
             //  //topRight: Radius.circular(30.0),
             //  bottomLeft:Radius.circular(30),
             // bottomRight: Radius.elliptical(30, 30),
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(12),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),

            ),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            crossAxisAlignment: isMe? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              // Text(
              //   userName,
              //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
              Text(messsage,
          //textAlign: isMe? TextAlign.start : TextAlign.end ,
                style: TextStyle(color: white),)
            ],
          ) ,
        ),

        //
        // Container(
        //   padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
        //   margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        //   child:
        //   Bubble(
        //     //padding: BubbleEdges.symmetric(vertical: 10,horizontal: 16),
        //     //margin: BubbleEdges.only(top: 8.0, right: 50.0),
        //     alignment: isMe? Alignment.topRight: Alignment.topLeft,
        //     nip: isMe? BubbleNip.rightBottom: BubbleNip.leftBottom,
        //     radius: Radius.elliptical(5.0, 10.0),
        //     color: nave,
        //     child: Text(messsage,
        //       //textAlign: isMe? TextAlign.start : TextAlign.end ,
        //       style: TextStyle(color: white),),
        //   ),
        //
        // ),
      ],
    );
  }
}
