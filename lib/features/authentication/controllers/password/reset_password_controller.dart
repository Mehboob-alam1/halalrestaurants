import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:halalrestaurants/common/success_screen/success_screen.dart';
import 'package:halalrestaurants/data/repositories/user/user_repository.dart';

import '../../../../common/widgets/loaders/t_loaders.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/network/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../screens/login/login.dart';

class ResetPasswordController extends GetxController {

  static ResetPasswordController get instance => Get.find();

  final confirmPassword = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  final userRepository = Get.put(UserRepository());

  void resetPassword() async {
    try {
      // Start loading
      HFullScreenLoader.openLoadingDialog(
          'Resetting your password...', HImages.loadingSearch);


      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        HFullScreenLoader.stopLoading();
        return;
      }

      // validation

      if (confirmPassword.text != password.text) {
        return;
      }

      // Form validation
      if (!signUpFormKey.currentState!.validate()) {
        HFullScreenLoader.stopLoading();
        return;
      }

      // Reset Password
      await AuthenticationRepository.instance.updateUserPassword(password.value.text);

      // Update Password in Database
      Map<String, dynamic> json = {'Password': password.text};
      await userRepository.updateSingleField(json);
      // Remove Loader
      HFullScreenLoader.stopLoading();



      Get.offAll(() =>

          SuccessScreen(
            image: HImages.successAnimation,
            title: HTexts.passwordChanged,
            subtitle: HTexts.passwordChangedSubTitle,

            onPressed: () =>
                Get.offAll(() => const LoginScreen()),
          ),
        );

    } catch (e) {
      HLoaders.errorSnackBar(
          title: 'Oh Snap !', message: 'Something went wrong :$e');
    }
  }


}