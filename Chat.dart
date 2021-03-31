//
// import 'addNavigationBar.dart';
import 'package:elderly_app/chat/messages.dart';
import 'package:elderly_app/chat/new_message.dart';
import 'package:elderly_app/customizedWidgets/addNavigationBar.dart';
import 'package:elderly_app/customizedWidgets/addNavigationBarWatcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elderly_app/FirebaseMessaging.dart';

//import 'main.dart';
import '../customizedWidgets/Constants.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  void initState() {
    whoIs(FirebaseAuth.instance.currentUser.email);
    super.initState();
    final fbm = FirebaseMessaging();
    fbm.requestNotificationPermissions();
    fbm.configure(
      onMessage: (msg) {
        print(msg);
        return;
      },
      onLaunch: (msg) {
        print(msg);
        return;
      },
      onResume: (msg) {
        print(msg);
        return;
      },
    );
    fbm.subscribeToTopic('chat');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: bottomNavigationBar(type),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Messages()),
            NewMessage(),
          ],
        ),
      ),
    );
  }

  String type;
  void whoIs(String email) async {
    await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get()
        .then((doc) {
      if (doc.docs[0].exists) {
        if (doc.docs[0].data()['userType'] == 'elderly')
          type = "elderly";
        else if (doc.docs[0].data()['userType'] == 'watcher') type = "watcher";
      } else
        print("غييرررر مصرح inside input page line 73");
      print('inside whoIs function ');
      print('inside whoIs function ');
    }).catchError((err) => print('Not Valid'));
  }

  Widget bottomNavigationBar(String type) {
    Widget w;
    type == "elderly"
        ? w = AddNavigationBarPageElderly()
        : w = addNavigationBarPageWatcher();
    return w;
  }
}
