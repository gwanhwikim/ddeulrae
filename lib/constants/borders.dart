import 'package:flutter/material.dart';
import 'package:mole_game/constants/customColors.dart';

class Borders {
  static const double _width = 1;

  static const Border base = const Border.fromBorderSide(
    const BorderSide(width: _width, color: Colors.black),
  );

  static const Border gray = const Border.fromBorderSide(
    const BorderSide(width: _width, color: CustomColors.grayBase),
  );

  static const Border primary = const Border.fromBorderSide(
    const BorderSide(width: _width, color: CustomColors.primary),
  );

  static const Border primaryVariant = const Border.fromBorderSide(
    const BorderSide(width: _width, color: CustomColors.primaryVariant),
  );

  static const Border secondary = const Border.fromBorderSide(
    const BorderSide(width: _width, color: CustomColors.secondary),
  );

  static const Border secondaryVariant = const Border.fromBorderSide(
    const BorderSide(width: _width, color: CustomColors.secondaryVariant),
  );

  static const Border accent = const Border.fromBorderSide(
    const BorderSide(width: _width, color: CustomColors.accent),
  );

  static const Border appBar = const Border(
    bottom: const BorderSide(width: _width, color: CustomColors.grayBase),
  );

  static const Border white = const Border.fromBorderSide(
    const BorderSide(width: _width, color: Colors.white),
  );

  static final Border gray600 = Border.fromBorderSide(
    BorderSide(width: _width, color: CustomColors.gray[600]!),
  );

  static final Border disabled = Border.fromBorderSide(
    BorderSide(width: _width, color: CustomColors.gray[200]!),
  );

  static final Border gray200 = Border.fromBorderSide(
    BorderSide(width: _width, color: CustomColors.gray[200]!),
  );
}
