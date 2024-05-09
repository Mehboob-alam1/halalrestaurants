import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HElevatedButtonTheme{

  HElevatedButtonTheme._();

  static final lightElevatedButtonTheme=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HColors.white,
      backgroundColor: HColors.primary,
      disabledForegroundColor: HColors.grey,
      disabledBackgroundColor: HColors.grey,
      side: const BorderSide(color: HColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16,color: HColors.white,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );


  static final darkElevatedButtonTheme= ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HColors.white,
      backgroundColor: HColors.primary,
      disabledForegroundColor: HColors.grey,
      disabledBackgroundColor: HColors.grey,
      side: const BorderSide(color: HColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600,fontFamily: 'Poppins'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}