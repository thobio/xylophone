import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded keyForPlaySound({int soundPlayNumber, Color colors}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundPlayNumber);
        },
        color: colors,
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              keyForPlaySound(soundPlayNumber: 1, colors: Colors.red),
              keyForPlaySound(soundPlayNumber: 2, colors: Colors.orange),
              keyForPlaySound(soundPlayNumber: 3, colors: Colors.yellow),
              keyForPlaySound(soundPlayNumber: 4, colors: Colors.green),
              keyForPlaySound(soundPlayNumber: 5, colors: Colors.teal),
              keyForPlaySound(soundPlayNumber: 6, colors: Colors.blue),
              keyForPlaySound(soundPlayNumber: 7, colors: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
