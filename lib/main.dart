import 'package:akash_soam/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
//kIsWeb is a variable which return true if an app is running on web

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBILxnb5QZjC-bhCAt9X83CQZfssiFIiyg",
            authDomain: "akash-soam.firebaseapp.com",
            projectId: "akash-soam",
            storageBucket: "akash-soam.appspot.com",
            messagingSenderId: "361229382856",
            appId: "1:361229382856:web:e4c35fc72eefed7351a1fd",
            measurementId: "G-G3NEL1DNWH"));
  } else {
    await Firebase.initializeApp();
  }
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
