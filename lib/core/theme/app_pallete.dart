import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Warna tema gelap
const Color darkPrimary = Color(0xFF00A86B);
const Color darkSecondary = Color(0xFF003566);
const Color darkTertiary = Color(0xFF00A86B);
const Color darkNeutralBlack = Color(0xFF000814);
const Color darkNeutralGrey = Color(0xFF979FA3);
const Color darkNeutralSlateGrey = Color(0xFF0D1717);
const Color darkBackground = Color(0xFF0B1215);
const Color darkSurface = Color(0xFF0B1215);

final ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    primary: darkPrimary,
    primaryContainer: darkPrimary,
    secondary: darkSecondary,
    secondaryContainer: darkNeutralSlateGrey,
    surface: darkSurface,
    error: Colors.red,
    onPrimary: darkNeutralBlack,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
    headlineSmall: GoogleFonts.poppins(
      fontSize: 23,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: darkBackground,
    foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: darkPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: darkPrimary,
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  ),
  dropdownMenuTheme: const DropdownMenuThemeData(
    textStyle: TextStyle(
      color: darkNeutralBlack,
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
  iconTheme: const IconThemeData(
    color: darkTertiary,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: darkNeutralGrey),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: darkPrimary,
    foregroundColor: darkBackground,
  ),
  scaffoldBackgroundColor: darkBackground,
  cardColor: darkSurface,
  snackBarTheme: SnackBarThemeData(
    backgroundColor: darkSurface,
    contentTextStyle: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: darkPrimary,
    ),
  ),
);

// Warna tema terang
const Color lightPrimary = Color(0xFF00A86B);
const Color lightSecondary = Color(0xFF003566);
const Color lightTertiary = Color(0xFF00A86B);
const Color lightNeutralBlack = Color(0xFF000814);
const Color lightNeutralGrey = Color(0xFF979FA3);
const Color lightNeutralSlateGrey = Color(0xFF0D1717);
const Color lightBackground = Color(0xFFFFFFFF);
const Color lightSurface = Color(0xFFF5F5F5);

final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    primary: lightPrimary,
    primaryContainer: lightPrimary,
    secondary: lightSecondary,
    secondaryContainer: lightNeutralSlateGrey,
    surface: lightSurface,
    error: Colors.red,
    onPrimary: lightNeutralBlack,
    onSecondary: Colors.white,
    onSurface: lightNeutralSlateGrey,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    headlineSmall: GoogleFonts.poppins(
      fontSize: 23,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: lightBackground,
    foregroundColor: lightNeutralBlack,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: lightPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: lightPrimary,
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  ),
  dropdownMenuTheme: const DropdownMenuThemeData(
    textStyle: TextStyle(
      color: lightNeutralBlack,
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
  iconTheme: const IconThemeData(
    color: lightTertiary,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: lightNeutralGrey),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: lightPrimary,
    foregroundColor: lightBackground,
  ),
  scaffoldBackgroundColor: lightBackground,
  cardColor: lightSurface,
  snackBarTheme: SnackBarThemeData(
    backgroundColor: lightSurface,
    contentTextStyle: GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: lightPrimary,
    ),
  ),
);
