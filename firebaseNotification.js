const express = require('express')
const app = express()
var firebase = require('firebase');
var app2 = firebase.initializeApp({ ... });
app.use(express.json())

app.listen(3000, () => {
    console.log("Listening on port 3000...")
})


const admin = require("firebase-admin");
const serviceAccount = require("path/to/serviceAccountKey.json");
const FIREBASE_DATABASE_URL= "https://elderly-life.firebaseio.com";

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: FIREBASE_DATABASE_URL
});

export async function sendNotificationChatCreation(){

try{
var payload= {notificationL:{title:'FCM using flutter and node js',
body:'we are fine now'},
data:{click_action:"FLUTTER_NOTIFICATION_CLICK"}}
await admin.messaging().sendToTopic('chat',payload);
} catch(error){
console .log(error);
}
}


