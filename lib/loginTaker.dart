import 'package:englisherr/BottomNavigation.dart';
import 'package:englisherr/HomePage.dart';
import 'package:englisherr/LandingScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginT extends StatefulWidget {
  const loginT({super.key});

  @override
  State<loginT> createState() => _loginTState();
}

class _loginTState extends State<loginT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child:CircularProgressIndicator());
          }
          else if (snapshot.hasError){
            return Center(child: Text("Something went Wrong"),);
          }
          else if (snapshot.hasData){
            return BottomNavigation();
          } else {
            return loginPage();

          }
        },
      ),
    );
  }
}