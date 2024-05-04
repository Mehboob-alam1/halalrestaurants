import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HTextTheme{

  HTextTheme._();

  static TextTheme lightTextTheme=TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: HColors.dark,fontFamily: 'Manrope'),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: HColors.dark,fontFamily: 'Manrope'),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: HColors.dark,fontFamily: 'Manrope'),


    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: HColors.dark,fontFamily: 'Manrope'),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight:  FontWeight.w500,color: HColors.dark,fontFamily: 'Manrope'),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: HColors.dark,fontFamily: 'Manrope'),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: HColors.dark,fontFamily: 'Manrope'),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: HColors.dark,fontFamily: 'Manrope'),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color:HColors.dark.withOpacity(0.5),fontFamily: 'Manrope'),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.dark,fontFamily: 'Manrope'),
    labelSmall: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.dark.withOpacity(0.5),fontFamily: 'Manrope'),

  );
  static TextTheme darkTextTheme=TextTheme(

    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: HColors.light,fontFamily: 'Manrope'),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: HColors.light,fontFamily: 'Manrope'),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: HColors.light,fontFamily: 'Manrope'),


    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: HColors.light,fontFamily: 'Manrope'),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight:  FontWeight.w500,color: HColors.light,fontFamily: 'Manrope'),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: HColors.light,fontFamily: 'Manrope'),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: HColors.light,fontFamily: 'Manrope'),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: HColors.light,fontFamily: 'Manrope'),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: HColors.light.withOpacity(0.5),fontFamily: 'Manrope'),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.light,fontFamily: 'Manrope'),
    labelSmall: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.light.withOpacity(0.5),fontFamily: 'Manrope'),

  );
}