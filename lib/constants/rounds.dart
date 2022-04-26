import 'package:flutter/material.dart';
import 'package:mole_game/constants/fontSizes.dart';

class Rounds {
  static const double _size = FontSizes.base;
  static const double _step = .125;

  static const BorderRadius base = const BorderRadius.all(
    const Radius.circular(_size * _step * 2),
  );

  static const BorderRadius full = const BorderRadius.all(
    const Radius.circular(9999),
  );

  static const BorderRadius sm = const BorderRadius.all(
    const Radius.circular(_size * _step * 1),
  );

  static const BorderRadius md = const BorderRadius.all(
    const Radius.circular(_size * _step * 3),
  );

  static const BorderRadius lg = const BorderRadius.all(
    const Radius.circular(_size * _step * 4),
  );

  static const BorderRadius xl = const BorderRadius.all(
    const Radius.circular(_size * _step * 6),
  );

  static const RoundedRectangleBorder bottomSheet = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(_size * _step * 10),
      topRight: Radius.circular(_size * _step * 10),
    ),
  );
}
