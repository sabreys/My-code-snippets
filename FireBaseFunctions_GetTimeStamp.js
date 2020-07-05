//you can use this for getting real time from your firebase server.if you dont trust local time. you can use this for cheaters.

const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();

exports.stamp = functions.https.onCall(() => {
       var d = new Date();
       return { timeStamp: d.getTime() };          
   });