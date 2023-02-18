import 'package:flutter/material.dart';

class MyColorTheme {
  static const Color primary = Color(0xFF0070BA);
  static const Color primaryShade = Color(0xFF005EA6);
  static const Color primaryDark = Color(0xFF1546A0);
  static const MaterialColor primarySwatch = Colors.blue;

  static Color shadow = const Color(0xFF1546A0).withOpacity(0.5);

  static const Color gray = Color(0xFFF5F7FA);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF243656);

  static const RadialGradient gradient = RadialGradient(
    colors: [
      Color(0xFF0070BA),
      Color(0xFF1546A0),
    ],
  );

  static const Color blackShade = Color(0xFF929BAB);

  static const Color green = Color(0xFF37D39B);

  static const Color red = Color(0xFFF47090);
}
