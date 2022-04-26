import 'package:flutter/material.dart';
import 'package:mole_game/constants/fontSizes.dart';

class Spacings {
  static const double _size = FontSizes.root;
  static const double _step = 0.25;

  static const EdgeInsets toolBarHeight = EdgeInsets.only(top: kToolbarHeight);

  static const Map<int, EdgeInsets> all = {
    1: const EdgeInsets.all(_size * _step * 1),
    2: const EdgeInsets.all(_size * _step * 2),
    3: const EdgeInsets.all(_size * _step * 3),
    4: const EdgeInsets.all(_size * _step * 4),
    5: const EdgeInsets.all(_size * _step * 5),
    6: const EdgeInsets.all(_size * _step * 6),
    7: const EdgeInsets.all(_size * _step * 7),
    8: const EdgeInsets.all(_size * _step * 8),
    9: const EdgeInsets.all(_size * _step * 9),
    10: const EdgeInsets.all(_size * _step * 10),
  };

  static const Map<int, EdgeInsets> vertical = {
    1: const EdgeInsets.symmetric(vertical: _size * _step * 1),
    2: const EdgeInsets.symmetric(vertical: _size * _step * 2),
    3: const EdgeInsets.symmetric(vertical: _size * _step * 3),
    4: const EdgeInsets.symmetric(vertical: _size * _step * 4),
    5: const EdgeInsets.symmetric(vertical: _size * _step * 5),
    6: const EdgeInsets.symmetric(vertical: _size * _step * 6),
    7: const EdgeInsets.symmetric(vertical: _size * _step * 7),
    8: const EdgeInsets.symmetric(vertical: _size * _step * 8),
    9: const EdgeInsets.symmetric(vertical: _size * _step * 9),
    10: const EdgeInsets.symmetric(vertical: _size * _step * 10),
  };

  static const Map<int, EdgeInsets> horizontal = {
    1: const EdgeInsets.symmetric(horizontal: _size * _step * 1),
    2: const EdgeInsets.symmetric(horizontal: _size * _step * 2),
    3: const EdgeInsets.symmetric(horizontal: _size * _step * 3),
    4: const EdgeInsets.symmetric(horizontal: _size * _step * 4),
    5: const EdgeInsets.symmetric(horizontal: _size * _step * 5),
    6: const EdgeInsets.symmetric(horizontal: _size * _step * 6),
    7: const EdgeInsets.symmetric(horizontal: _size * _step * 7),
    8: const EdgeInsets.symmetric(horizontal: _size * _step * 8),
    9: const EdgeInsets.symmetric(horizontal: _size * _step * 9),
    10: const EdgeInsets.symmetric(horizontal: _size * _step * 10),
  };

  static const Map<int, EdgeInsets> top = {
    1: const EdgeInsets.only(top: _size * _step * 1),
    2: const EdgeInsets.only(top: _size * _step * 2),
    3: const EdgeInsets.only(top: _size * _step * 3),
    4: const EdgeInsets.only(top: _size * _step * 4),
    5: const EdgeInsets.only(top: _size * _step * 5),
    6: const EdgeInsets.only(top: _size * _step * 6),
    7: const EdgeInsets.only(top: _size * _step * 7),
    8: const EdgeInsets.only(top: _size * _step * 8),
    9: const EdgeInsets.only(top: _size * _step * 9),
    10: const EdgeInsets.only(top: _size * _step * 10),
  };

  static const Map<int, EdgeInsets> bottom = {
    1: const EdgeInsets.only(bottom: _size * _step * 1),
    2: const EdgeInsets.only(bottom: _size * _step * 2),
    3: const EdgeInsets.only(bottom: _size * _step * 3),
    4: const EdgeInsets.only(bottom: _size * _step * 4),
    5: const EdgeInsets.only(bottom: _size * _step * 5),
    6: const EdgeInsets.only(bottom: _size * _step * 6),
    7: const EdgeInsets.only(bottom: _size * _step * 7),
    8: const EdgeInsets.only(bottom: _size * _step * 8),
    9: const EdgeInsets.only(bottom: _size * _step * 9),
    10: const EdgeInsets.only(bottom: _size * _step * 10),
  };

  static const Map<int, EdgeInsets> left = {
    1: const EdgeInsets.only(left: _size * _step * 1),
    2: const EdgeInsets.only(left: _size * _step * 2),
    3: const EdgeInsets.only(left: _size * _step * 3),
    4: const EdgeInsets.only(left: _size * _step * 4),
    5: const EdgeInsets.only(left: _size * _step * 5),
    6: const EdgeInsets.only(left: _size * _step * 6),
    7: const EdgeInsets.only(left: _size * _step * 7),
    8: const EdgeInsets.only(left: _size * _step * 8),
    9: const EdgeInsets.only(left: _size * _step * 9),
    10: const EdgeInsets.only(left: _size * _step * 10),
  };

  static const Map<int, EdgeInsets> right = {
    1: const EdgeInsets.only(right: _size * _step * 1),
    2: const EdgeInsets.only(right: _size * _step * 2),
    3: const EdgeInsets.only(right: _size * _step * 3),
    4: const EdgeInsets.only(right: _size * _step * 4),
    5: const EdgeInsets.only(right: _size * _step * 5),
    6: const EdgeInsets.only(right: _size * _step * 6),
    7: const EdgeInsets.only(right: _size * _step * 7),
    8: const EdgeInsets.only(right: _size * _step * 8),
    9: const EdgeInsets.only(right: _size * _step * 9),
    10: const EdgeInsets.only(right: _size * _step * 10),
  };

  static const Map<int, SizedBox> offset = {
    1: const SizedBox(width: _size * _step * 1, height: _size * _step * 1),
    2: const SizedBox(width: _size * _step * 2, height: _size * _step * 2),
    3: const SizedBox(width: _size * _step * 3, height: _size * _step * 3),
    4: const SizedBox(width: _size * _step * 4, height: _size * _step * 4),
    5: const SizedBox(width: _size * _step * 5, height: _size * _step * 5),
    6: const SizedBox(width: _size * _step * 6, height: _size * _step * 6),
    7: const SizedBox(width: _size * _step * 7, height: _size * _step * 7),
    8: const SizedBox(width: _size * _step * 8, height: _size * _step * 8),
    9: const SizedBox(width: _size * _step * 9, height: _size * _step * 9),
    10: const SizedBox(width: _size * _step * 10, height: _size * _step * 10),
  };
}
