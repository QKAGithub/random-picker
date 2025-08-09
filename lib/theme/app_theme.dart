
import 'package:flutter/material.dart';
import 'glass.dart';

class AppTheme {
  static const _seed = Color(0xFF1E5EFF);

  static ThemeData get light {
    final base = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.light),
      useMaterial3: true,
    );
    return base.copyWith(
      scaffoldBackgroundColor: const Color(0xFFF4F8FF),
      cardTheme: Glass.cardLight,
      dialogTheme: Glass.dialogLight,
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    );
  }

  static ThemeData get dark {
    final base = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: _seed, brightness: Brightness.dark),
      useMaterial3: true,
    );
    return base.copyWith(
      scaffoldBackgroundColor: const Color(0xFF0B0F1A),
      cardTheme: Glass.cardDark,
      dialogTheme: Glass.dialogDark,
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    );
  }
}
