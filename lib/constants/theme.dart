import 'package:flutter/material.dart';

final appTheme = ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.green,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF00263A),
    scaffoldBackgroundColor: const Color(0xFF00263A),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
    textTheme: TextTheme(
        bodyText2: TextStyle(fontSize: 40), button: TextStyle(fontSize: 20)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 25, vertical: 15)))));
