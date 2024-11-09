import 'package:flutter/material.dart';

class MyTheme {

  static const Color lightPrimaryColor=Color(0xFF243B61);

  var lightTheme = ThemeData(

    primaryColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightPrimaryColor
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
      ),

      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600
      )
    )

  );
  var darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightPrimaryColor
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600

      ),

      bodyMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500
      )
    )

  );

}