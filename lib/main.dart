import 'package:englisherr/HomePage.dart';
import 'package:englisherr/splashscreen.dart';
import 'package:englisherr/BottomNavigation.dart';
import 'package:englisherr/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Englisherr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      home: const BottomNavigation(),
    );
  }
}