import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: tSecondaryColor,
      floatingLabelStyle: const TextStyle(color: tSecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(width: 2, color: tSecondaryColor),
      ));
}
