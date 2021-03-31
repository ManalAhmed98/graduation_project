//
//const admin = require("firebase-admin");
//const serviceAccount = require("path/to/serviceAccountKey.json");
//const FIREBASE_DATABASE_URL= "https://elderly-life.firebaseio.com";
//
//admin.initializeApp({
//  credential: admin.credential.cert(serviceAccount),
//  databaseURL: FIREBASE_DATABASE_URL
//})
//module.exports.admin = admin

//export async function sendNotificationChatCreation(){
//
//try{
//var payload= {notificationL:{title:'FCM using flutter and node js ممننناالللل',
//body:'we are fine now Manal ممننناالللل '},
//data:{click_action:"FLUTTER_NOTIFICATION_CLICK"}}
// await admin.messaging().sendToTopic('chat',payload);
//} catch(error){
//console .log(error);
//}
//}

var FCM = require('fcm-node');

var serverKey = 'AAAAhaAtYlI:APA91bE61jL3xUNTvC8SUjnMRokffByO_E3m_MKh1GQdaV1k6vbzWanI1ekP5oQwLqnzZmDzVNpbgUgd9WH-rwvHsHq4IqJLbEJ_VckTA12lg_zn8lHRQX7mALlCDqGlYhe2LNCZrcHm';
var fcm = new FCM(serverKey);

var message = { //this may vary according to the message type (single recipient, multicast, topic, et cetera)
    to: 'chat',
    collapse_key: 'your_collapse_key',

    notification: {
        title: 'Title of your push notification',
        body: 'Body of your push notification'
    },

    data: {  //you can send only notification or only data(or include both)
        my_key: 'my value',
        my_another_key: 'my another value'
    }
};

fcm.send(message, function(err, response){
    if (err) {
        console.log("Something has gone wrong!");
    } else {
        console.log("Successfully sent with response: ", response);
    }
});