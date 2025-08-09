import 'package:flutter/material.dart';

class Glass {
  static CardThemeData get cardLight => CardThemeData(
        elevation: 0,
        color: Colors.white.withOpacity(0.55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        surfaceTintColor: Colors.white,
        margin: const EdgeInsets.all(12),
      );

  static CardThemeData get cardDark => CardThemeData(
        elevation: 0,
        color: Colors.white.withOpacity(0.08),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        surfaceTintColor: Colors.white10,
        margin: const EdgeInsets.all(12),
      );

  static DialogThemeData get dialogLight => DialogThemeData(
        backgroundColor: Colors.white.withOpacity(0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      );

  static DialogThemeData get dialogDark => DialogThemeData(
        backgroundColor: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      );
}
