import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  ///LETTER SPACING
  static double letterSpacing = -0.3;

  /// LIGTH COLORS
  static const Color primaryLigth     = Color(0xFF4062FF);
  static const Color notSelectedLigth = Color(0xFF949494);
  static const Color mutedLigth       = Color(0xFFD7D7D7);
  static const Color inverseLigth     = Color(0xFF3A3A3A);
  static const Color backgroundLigth  = Color(0xFFFFFFFF);

  
  /// LIGTH THEME
  static final ThemeData ligthTheme = ThemeData.light().copyWith(

    /// PRIMARY COLOR
    primaryColor: primaryLigth,

    /// SCAFFOLD COLOR
    scaffoldBackgroundColor: backgroundLigth,

    /// TEXT THEME
    textTheme: GoogleFonts.montserratTextTheme(),

    /// APP BAR
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleSpacing: 0,
      color: backgroundLigth,
      iconTheme: const IconThemeData( color: primaryLigth),
      titleTextStyle: GoogleFonts.montserrat(
        letterSpacing:letterSpacing, 
        textStyle: const TextStyle(fontWeight: FontWeight.normal),
        fontSize: 21,
        color: inverseLigth,
      ),
    ),

    /// BOTTOM NAVIGATION BAR
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: backgroundLigth,
      selectedItemColor: primaryLigth,
      unselectedItemColor: notSelectedLigth,
      elevation: 0,
    ),

  );


}