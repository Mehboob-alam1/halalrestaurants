import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/common/widgets/loaders/t_loaders.dart';
import 'package:halalrestaurants/data/repositories/authentication/authentication_repository.dart';

import '../../../../data/repositories/user/user_repository.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/network/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../models/user/user_model.dart';
import '../../screens/signup/verify_email.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables

  final hidePassword = true.obs;
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  /// - SIGNUP

  void signup() async {
    try {
      // Start loading
      HFullScreenLoader.openLoadingDialog(
          'We are processing your information...', HImages.loadingSearch);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        HFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation

      if (!signUpFormKey.currentState!.validate()) {
        HFullScreenLoader.stopLoading();
        return;
      }

      // Register user in firebase authentication and save user data

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authenticated user data in the Firebase FireStore

      final newUser = UserModel(
          id: userCredential.user!.uid,
          name: name.text.trim(),
          phoneNumber: phone.text.trim(),
          email: email.text.trim(),
          password: password.text.trim(),
          profilePicture: '',
          userName: '');

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

         // Remove loader

      HFullScreenLoader.stopLoading();

      // Show success message

      HLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created ! Verify email to continue.');

      // Move to verify email

      Get.to(()=>   VerifyEmailScreen(email: email.text.trim()));

    } catch (e) {
      HLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
