import 'package:flutter/material.dart';
import 'package:halalrestaurants/utils/themes/custom_themes/appbar_theme.dart';
import 'package:halalrestaurants/utils/themes/custom_themes/checkbox_theme.dart';
import 'package:halalrestaurants/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:halalrestaurants/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:halalrestaurants/utils/themes/custom_themes/text_field_theme.dart';
import 'package:halalrestaurants/utils/themes/custom_themes/text_theme.dart';

import '../constants/colors.dart';

class HAppTheme {
  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: HColors.primary,
      scaffoldBackgroundColor: HColors.white,
      textTheme: HTextTheme.lightTextTheme,
      elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: HOutlinedButtonTheme.lightOutlinedButtonTheme,
      appBarTheme: HAppBarTheme.lightAppBarTheme,
      checkboxTheme: HCheckBoxTheme.lightCheckboxTheme,
      inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: HColors.primary,
      scaffoldBackgroundColor: HColors.black,
      checkboxTheme: HCheckBoxTheme.darkCheckboxTheme,
      textTheme: HTextTheme.darkTextTheme,
      elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: HOutlinedButtonTheme.darkOutlinedButtonTheme,
      appBarTheme: HAppBarTheme.darkAppBarTheme,
      inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme);
}
