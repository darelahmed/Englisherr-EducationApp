import 'package:englisherr/UI/HomePage.dart';

import 'package:englisherr/LandingScreen.dart';
import 'package:englisherr/signupInput.dart';
import 'package:englisherr/splashscreen.dart';
import 'package:englisherr/BottomNavigation.dart';
import 'package:englisherr/HomePage.dart';
import 'package:englisherr/utils.dart';
import 'package:englisherr/UI/BottomNavigation.dart';
import 'package:englisherr/UI/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      debugShowCheckedModeBanner: false,
      title: 'Englisherr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}