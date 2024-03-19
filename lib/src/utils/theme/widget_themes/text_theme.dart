import 'package:flutter/material.dart';
import 'package:gravefinder/src/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = const TextTheme(
    // -- form header widget title
    headline1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: tDarkColor),

    // -- splash screen text
    // -- forget password bottom sheet title text
    // -- dashboard heading, search
    headline2: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: tDarkColor),

    // -- welcome screen title text
    headline3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: tDarkColor),

    // -- dashboard appbar title text, categories title and subtitle
    headline4: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: tDarkColor),

    // -- forget password btn widget title
    // -- forget password otp screen subtitle
    // -- dashboard datatype title
    headline6: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: tDarkColor),

    // -- welcome screen subtitle text, ifadmin, ifnotadmin
    // -- form header widget subtitle
    bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: tDarkColor),

    // -- forget password bottom sheet subtitle text
    // -- forget password btn widget subtitle
    // -- dashboard title, datatype subtitle, categories subtext
    bodyText2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: tDarkColor),
  );
}
