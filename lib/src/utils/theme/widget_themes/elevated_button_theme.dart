import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';
import 'package:gravefinder/src/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedBtnTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
