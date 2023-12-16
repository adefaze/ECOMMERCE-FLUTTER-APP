import 'package:flutter/material.dart';

class AAppBarTheme {
  AAppBarTheme._();

// light appbar theme
  static const lightAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24),
      actionsIconTheme: IconThemeData(color: Colors.amberAccent, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black));

  // dark appbar theme
  static const darkAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24),
      actionsIconTheme: IconThemeData(color: Colors.amberAccent, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black));
}
