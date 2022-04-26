import 'package:flutter/material.dart';
import 'package:mole_game/constants/borders.dart';

class CustomAppBar {
  static AppBar create({
    required String title,
    List<Widget>? actions,
  }) =>
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(title),
        shape: Borders.appBar,
        actions: actions,
      );
}
