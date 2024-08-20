import 'package:flutter/material.dart';

class ApplicationThemeData{

  static const Color primaryColor = Color(0xFFB7935F);

  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          )
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF222222),
        selectedIconTheme: IconThemeData(
          size: 35,
          color: Color(0xFF242424),
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 16,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 14,
        ),
        unselectedIconTheme: IconThemeData(
          size: 35,
          color: Color(0xFFF8F8F8),
        ),
        showUnselectedLabels: false,
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          bodyLarge: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
          bodyMedium: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.black
          ),
          bodySmall: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          displaySmall: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black
              )

          ),
    dividerTheme: DividerThemeData(
      color: primaryColor,
    ),
  );
}