import 'dart:async';

import 'package:englisherr/HomePage.dart';
import 'package:englisherr/LandingScreen.dart';
import 'package:englisherr/loginTaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class loading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}
class SplashState extends State<loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: initScreen(context),
    );
  }
  
  startTime() async {
    var duration = new Duration(seconds: 8);
    return new Timer(duration, route);
  }
route() {
    Get.off(()=> loginT(),transition: Transition.circularReveal,duration:Duration(seconds: 1) );
    
  }
  
  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A6363),
      body: Center(
        child: CircularProgressIndicator()
      ),
    );
  }
}