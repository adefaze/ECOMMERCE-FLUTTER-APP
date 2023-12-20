import 'package:ecommer_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/elevator_button_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/text_field.dart';
import 'package:ecommer_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatorButtonTheme.lightElevatorButtonTheme,
    appBarTheme: CustomAppBarTheme.lightAppbarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightThemeButtonSheet,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    outlinedButtonTheme: CustomOutlinedTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme
        .lightTextFieldTheme, //input decoration is text field theme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: CustomElevatorButtonTheme.darkElevatorButtonTheme,
    appBarTheme: CustomAppBarTheme.darkAppbarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkThemeButtonSheet,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    outlinedButtonTheme: CustomOutlinedTheme.darkOutlinedTheme,
    inputDecorationTheme: CustomTextFieldTheme
        .darkTextFieldTheme, //input decoration is text field theme
  );
}
