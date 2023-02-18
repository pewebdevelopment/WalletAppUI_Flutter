import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/pages/login_page.dart';
import 'package:wallet_app/themes/app_bar_theme.dart';
import 'package:wallet_app/themes/button_theme.dart';
import 'package:wallet_app/themes/color_theme.dart';
import 'package:wallet_app/themes/input_decoration.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: MyColorTheme.primary, // Status bar
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: MyColorTheme.black,
          displayColor: MyColorTheme.black,
        ),
        primarySwatch: MyColorTheme.primarySwatch,
        brightness: Brightness.light,
        primaryColor: MyColorTheme.primary,
        scaffoldBackgroundColor: MyColorTheme.white,
        elevatedButtonTheme: MyButtonTheme.elevatedButtonThemeData,
        inputDecorationTheme: MyInputDecoration.inputDecoration,
        appBarTheme: MyAppBarTheme.appBarTheme,
      ),
      home: const LoginPage(),
    );
  }
}
