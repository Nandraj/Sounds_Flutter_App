import 'package:flutter/material.dart';
import 'home_button.dart';
import 'package:Sounds_Flutter_App/views/air/air_screen.dart';
import 'package:Sounds_Flutter_App/views/animals/animals_screen.dart';
import 'package:Sounds_Flutter_App/views/birds/birds_screen.dart';
import 'package:Sounds_Flutter_App/views/insects/insects_screen.dart';
import 'package:Sounds_Flutter_App/views/laugh/laugh_screen.dart';
import 'package:Sounds_Flutter_App/views/piano/piano_screen.dart';
import 'package:Sounds_Flutter_App/views/water/water_screen.dart';
import 'package:Sounds_Flutter_App/views/xylophone/xylophone_screen.dart';

class HomeScreenLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: HomeButton("Animals", AnimalsScreen())),
                Expanded(child: HomeButton("Birds", BirdsScreen())),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: HomeButton("Insects", InsectsScreen())),
                Expanded(child: HomeButton("Water", WaterScreen())),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: HomeButton("Air", AirScreen())),
                Expanded(child: HomeButton("Laugh", LaughScreen())),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: HomeButton("Xylophone", XylophoneScreen())),
                Expanded(child: HomeButton("Piano", PianoScreen())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
