import 'package:flutter/material.dart';

class CustomColors {
  static const Color primary = const Color(0xFFff6f00);
  static const Color primaryVariant = const Color(0xFFffaf1d);
  static const Color secondary = const Color(0xFFfff6eb);
  static const Color secondaryVariant = const Color(0xFFF9E3C5);
  static const Color accent = const Color(0xFFef5513);
  static const Color discount = const Color(0xFFff5b5b);

  static const Color kakao = const Color(0xFFfee500);

  static const Color grayBase = const Color(0xFF9ca3af);

  static const Color ticketColor = const Color(0xffFFE8D6);

  static const Map<int, Color> gray = {
    50: const Color(0xFFf9fafb),
    100: const Color(0xFFf3f4f6),
    200: const Color(0xFFe5e7eb),
    300: const Color(0xFFd1d5db),
    400: grayBase,
    500: const Color(0xFF6b7280),
    600: const Color(0xFF4b5563),
    700: const Color(0xFF374151),
    800: const Color(0xFF1f2937),
    900: const Color(0xFF111827),
  };

  static const Map<int, Color> primaryColors = {
    50: const Color(0xFFfff8e1),
    100: const Color(0xFFffecb3),
    200: const Color(0xFFffe082),
    300: const Color(0xFFffd54f),
    400: const Color(0xFFffca28),
    500: const Color(0xFFffc106),
    600: const Color(0xFFffb300),
    700: const Color(0xFFffa000),
    800: const Color(0xFFff8f00),
    900: primary,
  };

  static const primarySwatch =
      const MaterialColor(900, CustomColors.primaryColors);
}
