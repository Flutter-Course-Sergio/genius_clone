import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color color1 = Color(0xFF1DB954);
const Color color2 = Color(0xFF212121);
const Color color3 = Color(0xFF121212);
const Color color4 = Color(0xFF535353);
const Color color5 = Color(0xFFB3B3B3);

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      iconTheme: const IconThemeData(color: color5),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.montserratAlternates().copyWith(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          titleMedium: GoogleFonts.montserratAlternates().copyWith(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          titleSmall: GoogleFonts.montserratAlternates().copyWith(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              textStyle: WidgetStatePropertyAll(
                  GoogleFonts.montserratAlternates()
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w700)))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              textStyle: WidgetStatePropertyAll(
                  GoogleFonts.montserratAlternates().copyWith(fontSize: 16, fontWeight: FontWeight.w700)))),
      textButtonTheme: TextButtonThemeData(style: ButtonStyle(textStyle: WidgetStatePropertyAll(GoogleFonts.montserratAlternates().copyWith(fontSize: 16, fontWeight: FontWeight.w700)))));
}
