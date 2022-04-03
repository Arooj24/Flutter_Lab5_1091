import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  BallPage({Key? key}) : super(key: key);
  double BallNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Ask Me Everything"),
              backgroundColor: Colors.blueAccent,
            ),
            body: SafeArea(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.lightBlue,
                child: ElevatedButton(
                    onPressed: () {
                      BallNumber = Random().nextInt(5) + 0;
                      print('I got Clicked');
                      print(BallNumber);
                    },
                    child: Image.asset('images/ball$BallNumber.png')),
              ),
            )));
  }
}
