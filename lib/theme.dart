import 'package:flutter/material.dart';

ThemeData myTheme(){
  return ThemeData(
    primarySwatch: Colors.blueGrey,
    shadowColor: Colors.white24,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Dongle-Regular",
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none
    )
  );
}