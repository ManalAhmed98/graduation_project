import 'package:elderly_app/Pages/EditElderlyProfile.dart';
import 'package:elderly_app/Pages/HomepageWatcher.dart';

import 'Medication/MedInSignUp.dart';
import 'Medication/medicinePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Medication/DailyMedcation.dart';
import 'Medication/EditMedicationDaily.dart';
import 'Medication/MonthlyMedcationPage.dart';
import 'Medication/WeeklyMedcationPage.dart';
import 'customizedWidgets/Constants.dart';
import 'Pages/HomepageElderly.dart';
import 'Pages/elderlyProfile.dart';
import 'Pages/elderlySignUp.dart';
import 'Pages/firstPage.dart';
import 'Medication/medicine.dart';
import 'Pages/input_page.dart';
import 'Pages/signUpPage.dart';
import 'Pages/watcherProfile.dart';
import 'Pages/addGelu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/Chat.dart';
import 'Medication/MedcationDet.dart';
import 'customizedWidgets/chart.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (Firebase.apps.isEmpty) await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}


handleNotifications() async {
  FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(badge: true, alert: true, sound: true);//presentation options for Apple notifications when received in the foreground.

  FirebaseMessaging.onMessage.listen((message) async {
    print('Got a message whilst in the FOREGROUND!');
    return;
  }).onData((data) {
    print('Got a DATA message whilst in the FOREGROUND!');
    print('data from stream: ${data.data}');
  });

  FirebaseMessaging.onMessageOpenedApp.listen((message) async {
    print('NOTIFICATION MESSAGE TAPPED');
    return;
  }).onData((data) {
    print('NOTIFICATION MESSAGE TAPPED');
    print('data from stream: ${data.data}');
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.instance
      .getInitialMessage()
      .then((value) => value != null ? _firebaseMessagingBackgroundHandler : false);
  return;
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ElderlyLife());
}

class ElderlyLife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, appSnapshot) {
          return MaterialApp(
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              Locale("ar", "AE"),
            ],
            locale: Locale("ar", "AE"),
            routes: {
              "first": (context) => FisrPage(),
              "login": (context) => InputPage(),
              "signup": (context) => SignUpPage(),
              "elderlysignup": (context) => elderlySignUpPage(),
              "addMidecation": (context) => AddMedicinePage(),
              "elderlyHome": (context) => HomepageElderly(),
              "addGelu": (context) => AddGeluPage(),
              "watcherProfile": (context) => WatcherProfilePage(),
              "elderlyProfile": (contet) => elderlyProfilePage(),
              //"editMedcition": (context) => EditMedicinePage(),
              "editElderlyProfile": (context) => EditElderlyProfilePage(),
              "chatPage": (content) => ChatPage(),
              "medicinePage": (context) => MedicinePage(),
              "dailyMedPage": (context) => DailyMedicinePage(),
              "WeeklyMedPage": (context) => WeeklyMedicinePage(),
              "monthlyMedPage": (context) => MonthlyMedicinePage(),
              "watcherHome": (context) => HomepageWatcher(),
              "SignUpMed": (context) => AddMedicineSignUpPage(),

              //"editMedicine": (content)=> EditMedicinePage(),
            },

            home:
                // appSnapshot.connectionState != ConnectionState.done
                //     ? SplashScreen()
                //     : StreamBuilder(
                //         stream: FirebaseAuth.instance.authStateChanges(),
                //         builder: (ctx, userSnapshot) {
                //           if (userSnapshot.connectionState ==
                //               ConnectionState.waiting) {
                //             return SplashScreen();
                //           }
                //           if (userSnapshot.hasData) {
                //             return ChatPage();
                //           }
                //           return FisrPage();
                //         }),
                // SplashScreen(),
                // MedicinePageDet(),
                // MedicinePage(),
                // EditDailyMedicinePage(),
                // AddMedicinePage(),
                //DailyMedicinePage(),
                //WeeklyMedicinePage(),
                //MonthlyMedicinePage(),
                //  HomepageWatcher(),
                FisrPage(),
                // EditDailyMedicinePage(),
                // AddMedicinePage(),
                //DailyMedicinePage(),
                //WeeklyMedicinePage(),
                //MonthlyMedicinePage(),
                // HomepageWatcher(),
                //  InputPage(),
                //SignUpPage(),
                // Chart(),
                // HomepageElderly(),
                //FisrPage(),
            // InputPage(),
            // SignUpPage(),
            //elderlySignUpPage(),
            // HomepageElderly(),
            // AddGeluPage(),
            // WatcherProfilePage(),
            // MedicineDet(),
            // EditElderlyProfilePage(),
            // ChatPage(),

            theme: ThemeData(
              accentColor: nave,
              primaryColor: nave,
              buttonTheme: ButtonThemeData(
                buttonColor: yellow,
                textTheme: ButtonTextTheme.accent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              scaffoldBackgroundColor: white,
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
              ),
            ),
          );
        });
  }
}
