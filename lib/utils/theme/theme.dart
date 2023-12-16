import 'package:ecommer_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommer_store/utils/theme/custom_themes/elevator_button_theme.dart';
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
    textTheme: ATextTheme.lightTextTheme,
    elevatedButtonTheme: AElevatorButtonTheme.lightElevatorButtonTheme,
    appBarTheme: AAppBarTheme.lightAppbarTheme,
    bottomSheetTheme: ABottomSheetTheme.lightThemeButtonSheet,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ATextTheme.darkTextTheme,
    elevatedButtonTheme: AElevatorButtonTheme.darkElevatorButtonTheme,
    appBarTheme: AAppBarTheme.darkAppbarTheme,
    bottomSheetTheme: ABottomSheetTheme.darkThemeButtonSheet,
  );
}