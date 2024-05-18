import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:halalrestaurants/data/repositories/authentication/authentication_repository.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';
import 'package:halalrestaurants/utils/constants/text_strings.dart';
import 'package:halalrestaurants/utils/network/network_manager.dart';
import 'package:halalrestaurants/utils/popups/full_screen_loader.dart';

import '../../../../common/widgets/loaders/t_loaders.dart';

class LoginController extends GetxController {


  /// Variable

  final rememberMe = false.obs;
  final hidePassword = false.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    super.onInit();
    email.text=localStorage.read(HTexts.rememberMeEmail);
    password.text=localStorage.read(HTexts.rememberMePassword);
  }

  /// -- Email and Password SignIn

  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      HFullScreenLoader.openLoadingDialog(
          'Logging you in...', HImages.loadingSearch);

      // Check Internet Connectivity

      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        HFullScreenLoader.stopLoading();
        return;
      }

      // Form validation

      if (!loginFormKey.currentState!.validate()) {
        HFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember me is selected

      if (!rememberMe.value) {
        localStorage.write(HTexts.rememberMeEmail, email.text.trim());
        localStorage.write(HTexts.rememberMePassword, password.text.trim());
      }

      // Login user using Email & Password Authentication

      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      HFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      HFullScreenLoader.stopLoading();
      HLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
