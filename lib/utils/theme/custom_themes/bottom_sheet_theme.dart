import 'package:flutter/material.dart';

class CustomBottomSheetTheme {
  CustomBottomSheetTheme._();

  // Bottom sheet light theme

  static BottomSheetThemeData lightThemeButtonSheet = BottomSheetThemeData(
    constraints: const BoxConstraints(minWidth: double.infinity),
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  // bottom sheet dark theme
  static BottomSheetThemeData darkThemeButtonSheet = BottomSheetThemeData(
    constraints: const BoxConstraints(minWidth: double.infinity),
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
