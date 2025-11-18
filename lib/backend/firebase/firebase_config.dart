import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDAU2HHuHDKqsX593SBsXqu4UKod51MSF4",
            authDomain: "meta-vision-app.firebaseapp.com",
            projectId: "meta-vision-app",
            storageBucket: "meta-vision-app.firebasestorage.app",
            messagingSenderId: "471425431016",
            appId: "1:471425431016:web:0d0bd6142997d5e71a605d"));
  } else {
    await Firebase.initializeApp();
  }
}
