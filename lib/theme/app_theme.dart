import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const parchment = Color(0xFFF9F5EE);
  static const parchmentDark = Color(0xFFF0E8DA);
  static const card = Color(0xFFF4EFE4);
  static const border = Color(0xFFD9CDBD);
  static const charcoal = Color(0xFF1A1A1A);
  static const muted = Color(0xFF6C6358);
  static const primary = Color(0xFF8A4E15);
  static const primaryLight = Color(0xFFB7773C);
  static const gold = Color(0xFFC49B38);
  static const goldLight = Color(0xFFD9B75F);
  static const blue = Color(0xFF355C8C);
  static const green = Color(0xFF2F6A47);
  static const red = Color(0xFF8D3B32);
}

class AppTheme {
  static ThemeData get theme {
    final base = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.parchment,
      colorScheme: const ColorScheme.light(
        surface: AppColors.parchment,
        primary: AppColors.primary,
        secondary: AppColors.gold,
        onSurface: AppColors.charcoal,
        onPrimary: Colors.white,
      ),
    );

    final display = GoogleFonts.playfairDisplayTextTheme(base.textTheme);
    final body = GoogleFonts.interTextTheme(display);

    return base.copyWith(
      textTheme: body.copyWith(
        displayLarge: body.displayLarge?.copyWith(
          color: AppColors.charcoal,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: body.displayMedium?.copyWith(
          color: AppColors.charcoal,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: body.headlineLarge?.copyWith(
          color: AppColors.charcoal,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: body.headlineMedium?.copyWith(
          color: AppColors.charcoal,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: body.bodyLarge?.copyWith(
          color: AppColors.charcoal,
          height: 1.6,
        ),
        bodyMedium: body.bodyMedium?.copyWith(
          color: AppColors.charcoal,
          height: 1.6,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.charcoal,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.card,
        hintStyle: const TextStyle(color: AppColors.muted),
        prefixIconColor: AppColors.muted,
        suffixIconColor: AppColors.muted,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.2),
        ),
      ),
    );
  }
}
