import 'package:flutter/material.dart';
import 'package:mole_game/constants/pages/fiveMokPage.dart';
import 'package:mole_game/constants/pages/oneToFiftyGame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FiveMokPage(),
    );
  }
}
