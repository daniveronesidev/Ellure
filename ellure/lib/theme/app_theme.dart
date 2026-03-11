import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData theme = ThemeData(

    scaffoldBackgroundColor: const Color(0xfff7f1ed),

    primaryColor: const Color(0xffe46b5c),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfff7f1ed),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Color(0xffe46b5c),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Color(0xffe46b5c),
      ),
    ),

    cardTheme: const CardTheme(
      elevation: 4,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffe46b5c),
      ),
    ),

  );

}