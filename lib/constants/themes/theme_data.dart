import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin themes implements ThemeData {
  static ThemeData light() => ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.tenorSansTextTheme().copyWith(
          titleLarge: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          titleSmall: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          subtitle2: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  static ThemeData dark() => ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.tenorSansTextTheme().copyWith(
          titleLarge: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          titleSmall: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          subtitle2: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
