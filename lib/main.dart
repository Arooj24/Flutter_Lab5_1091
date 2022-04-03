import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  piano(i: 1, clr: Colors.yellow),
                  piano(i: 2, clr: Colors.black),
                  piano(i: 3, clr: Colors.purple),
                  piano(i: 4, clr: Colors.blue),
                  piano(i: 5, clr: Colors.orange),
                  piano(i: 6, clr: Colors.red),
                  piano(i: 7, clr: Colors.lightGreen),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Expanded piano({required int i, required Color clr}) {
    return Expanded(
      child: Container(
        height: double.infinity,
        color: clr,
        child: TextButton(
          onPressed: () {
            AudioPlayer audioPlayer = AudioPlayer();
            audioPlayer.play('assets/note$i.wav');
          },
          child: Text(""),
        ),
      ),
    );
  }
}
