import 'package:flutter/material.dart';

import 'colors.dart';

mixin themes implements ThemeData {
  static ThemeData light() => ThemeData(
        fontFamily: 'TenorSans',
        brightness: Brightness.light,
        backgroundColor: white,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            wordSpacing: 4,
          ),
          titleMedium: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            wordSpacing: 2,
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            wordSpacing: 2,
          ),
          bodyLarge: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  static ThemeData dark() => ThemeData(
        fontFamily: 'TenorSans',
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
