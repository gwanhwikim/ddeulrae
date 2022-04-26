import 'package:flutter/material.dart';
import 'package:mole_game/pages/fiveMokPage.dart';

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
