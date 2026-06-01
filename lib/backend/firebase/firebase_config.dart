import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIza" + "SyBOGIRtQzguL3PNirdLw7AO0cvtDzgGMUE",
            authDomain: "base-d-gudohn.firebaseapp.com",
            projectId: "base-d-gudohn",
            storageBucket: "base-d-gudohn.firebasestorage.app",
            messagingSenderId: "462899202913",
            appId: "1:462899202913:web:b35426a61db9860a9e9320",
            measurementId: "G-GC7Y2299FM"));
  } else {
    await Firebase.initializeApp();
  }
}
