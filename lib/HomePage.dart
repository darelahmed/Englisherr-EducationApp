import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 74, 99, 99),
      body: Center(
        child: Text(
          "Home Page",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
