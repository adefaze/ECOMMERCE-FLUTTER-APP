import 'package:flutter/material.dart';

class CustomChipTheme {
  CustomChipTheme._();

// light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    labelStyle: const TextStyle(color: Colors.black),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );

  // dark chip theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    labelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
