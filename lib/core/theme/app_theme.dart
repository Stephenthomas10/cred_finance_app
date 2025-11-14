import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF050811),
      useMaterial3: true,
      fontFamily: 'Poppins',
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF15BDC4),
        brightness: Brightness.dark,
      ),
      textTheme: Typography.whiteCupertino.apply(
        fontFamily: 'Poppins',
      ),
    );
  }
}
