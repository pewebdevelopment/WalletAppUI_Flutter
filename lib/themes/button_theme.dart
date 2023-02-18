import 'package:flutter/material.dart';

import 'text_theme.dart';
import 'color_theme.dart';

class MyButtonTheme {
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        MyColorTheme.primary,
      ),
      shadowColor: MaterialStateProperty.all<Color>(
        MyColorTheme.primary,
      ),
      elevation: MaterialStateProperty.all<double>(
        16.0,
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        MyColorTheme.primaryDark,
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(24.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        MyTextTheme.bold,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        MyColorTheme.white,
      ),
    ),
  );
}
