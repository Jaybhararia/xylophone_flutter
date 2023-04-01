import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

Expanded build_fun(Color color, int x) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        play(x);
      },
      child: null,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              build_fun(Colors.red, 1),
              build_fun(Colors.lightBlue, 2),
              build_fun(Colors.yellow, 3),
              build_fun(Colors.green, 4),
              build_fun(Colors.blue, 5),
              build_fun(Colors.indigo, 6),
              build_fun(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

void play(int x) {
  final player = AudioPlayer();
  player.play(
    AssetSource('note$x.wav'),
  );
}
