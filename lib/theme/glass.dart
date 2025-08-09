
import 'package:flutter/material.dart';

class Glass {
  static CardTheme get cardLight => CardTheme(
        elevation: 0,
        color: Colors.white.withOpacity(0.55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        surfaceTintColor: Colors.white,
        margin: const EdgeInsets.all(12),
      );

  static CardTheme get cardDark => CardTheme(
        elevation: 0,
        color: Colors.white.withOpacity(0.08),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        surfaceTintColor: Colors.white10,
        margin: const EdgeInsets.all(12),
      );

  static DialogTheme get dialogLight => DialogTheme(
        backgroundColor: Colors.white.withOpacity(0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      );

  static DialogTheme get dialogDark => DialogTheme(
        backgroundColor: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      );
}
