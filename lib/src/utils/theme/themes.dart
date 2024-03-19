import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/utils/theme/widget_themes/appbar_theme.dart';
import 'package:gravefinder/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:gravefinder/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:gravefinder/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:gravefinder/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: tPrimarySwatch,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: TAppBarTheme.lightTAppBarTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedBtnTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
}
