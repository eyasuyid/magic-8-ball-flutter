import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballnumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}
