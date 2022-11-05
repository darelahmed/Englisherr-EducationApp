import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 74, 99, 99),
      body: Center(
        child: Text(
          "Challenge Page",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}