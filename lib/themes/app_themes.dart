import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryLigth     = Color(0xFF4062FF);
  static const Color notSelectedLigth = Color(0xFF949494);
  static const Color mutedLigth       = Color(0xFFD7D7D7);

  static final ThemeData ligthTheme = ThemeData.light().copyWith(

    primaryColor: primaryLigth,

    appBarTheme: const AppBarTheme(
      color: primaryLigth,
      elevation: 0 
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryLigth,
      unselectedItemColor: notSelectedLigth,
    )

  );


}