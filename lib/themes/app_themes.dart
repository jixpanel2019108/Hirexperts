import 'package:flutter/material.dart';

class AppTheme {

  static const Color primaryLigth = Color(0xFF4062FF);

  static final ThemeData ligthTheme = ThemeData.light().copyWith(

    primaryColor: primaryLigth,

    appBarTheme: const AppBarTheme(
      color: primaryLigth,
      elevation: 0 
    )

  );


}