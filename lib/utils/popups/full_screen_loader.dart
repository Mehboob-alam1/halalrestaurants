
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../common/widgets/loaders/animation_loader.dart';
import '../constants/colors.dart';
import '../helpers/helper_funtions.dart';

class HFullScreenLoader {

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: HHelperFunctions.isDarkMode(Get.context!) ?HColors.dark : HColors.light,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              WAnimationLoaderWidget(text: text,animation:animation,)
            ],
          ),
        ),
      ),
    );
  }


  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}
