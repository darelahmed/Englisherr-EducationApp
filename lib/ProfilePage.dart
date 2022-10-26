import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 74, 99, 99),
       body: Center(
        child: Column(
          children: [
            SizedBox(height: 150,),
            Text(
              "sign in as",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,fontSize: 16
              ),
            ),
            Text(user!.email!,style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40,),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            icon: Icon(Icons.arrow_back, size: 32,),
            label: Text("sign out", style: TextStyle(color: Colors.white ,fontSize: 24)
            ),
            onPressed: () => FirebaseAuth.instance.signOut(),
            )
        ],
        )
        
      ),
    );
  }
}
