import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HTextTheme{

  HTextTheme._();

  static TextTheme lightTextTheme=TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: HColors.dark,fontFamily: 'Poppins'),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: HColors.dark,fontFamily: 'Poppins'),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: HColors.dark,fontFamily: 'Poppins'),


    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: HColors.dark,fontFamily: 'Poppins'),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight:  FontWeight.w500,color: HColors.dark,fontFamily: 'Poppins'),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: HColors.dark,fontFamily: 'Poppins'),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: HColors.dark,fontFamily: 'Poppins'),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: HColors.dark,fontFamily: 'Poppins'),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color:HColors.dark.withOpacity(0.5),fontFamily: 'Poppins'),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.dark,fontFamily: 'Poppins'),
    labelSmall: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.dark.withOpacity(0.5),fontFamily: 'Poppins'),

  );
  static TextTheme darkTextTheme=TextTheme(

    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: HColors.light,fontFamily: 'Poppins'),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: HColors.light,fontFamily: 'Poppins'),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: HColors.light,fontFamily: 'Poppins'),


    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: HColors.light,fontFamily: 'Poppins'),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight:  FontWeight.w500,color: HColors.light,fontFamily: 'Poppins'),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: HColors.light,fontFamily: 'Poppins'),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: HColors.light,fontFamily: 'Poppins'),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: HColors.light,fontFamily: 'Poppins'),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: HColors.light.withOpacity(0.5),fontFamily: 'Poppins'),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.light,fontFamily: 'Poppins'),
    labelSmall: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: HColors.light.withOpacity(0.5),fontFamily: 'Poppins'),

  );
}