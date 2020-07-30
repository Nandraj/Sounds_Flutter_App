import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneScreen extends StatelessWidget {
  final player = AudioCache();

  Widget _soundButton(AudioCache player, int noteNo, Color color) {
    return Expanded(
      child: FlatButton(
        child: Text(""),
        color: color,
        onPressed: () {
          player.play("xylophone/note$noteNo.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _soundButton(player, 1, Colors.red),
              _soundButton(player, 2, Colors.orange),
              _soundButton(player, 3, Colors.yellow),
              _soundButton(player, 4, Colors.greenAccent),
              _soundButton(player, 5, Colors.green),
              _soundButton(player, 6, Colors.blue),
              _soundButton(player, 7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
