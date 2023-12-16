import 'package:flutter/material.dart';

class CustomCheckboxTheme {
  CustomCheckboxTheme._();

// light custom Checkbox theme
  static CheckboxThemeData lightCheckboxCustomTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      checkColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          } else {
            return Colors.black;
          }
        },
      ),
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.blue;
          } else {
            return Colors.transparent;
          }
        },
      ));


      // dark custom Checkbox theme
  static CheckboxThemeData darkCheckboxCustomTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      checkColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          } else {
            return Colors.black;
          }
        },
      ),
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.blue;
          } else {
            return Colors.transparent;
          }
        },
      ));
}
