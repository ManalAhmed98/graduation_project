import 'dart:ffi';
import 'package:elderly_app/chat/message_bubble.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Messages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user= FirebaseAuth.instance.currentUser;
    return  StreamBuilder(
      stream: FirebaseFirestore.instance.collection('chat').orderBy('createdAt',descending: true).snapshots(),
      builder: (ctx, chatSnapshot){
        if(chatSnapshot.connectionState== ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }

        //if(chatSnapshot.hasData){
        final chatDocs=  chatSnapshot.data.docs;

            return ListView.builder(
            reverse: true, //order the messages, it will scroll from the bottom to the tob
              itemCount:chatDocs.length,
              itemBuilder: (ctx, index)=> MessageBubble(
                  chatDocs[index]['text'],
                  chatDocs[index]['username'],
                  chatDocs[index]['userId'] == user.uid,
                ValueKey(chatDocs[index].id),
              )
          );

        },
        );

  }
}
