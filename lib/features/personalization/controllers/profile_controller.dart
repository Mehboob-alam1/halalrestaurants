import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/personalization/controllers/user_controller.dart';

import '../../../common/widgets/loaders/t_loaders.dart';
import '../../../data/repositories/user/user_repository.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/network/network_manager.dart';
import '../../../utils/popups/full_screen_loader.dart';
import '../../authentication/models/user/user_model.dart';
import '../screens/settings/profile/profile.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final name = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final userController = UserController.instance;

  final userRepository = Get.put(UserRepository());



  GlobalKey<FormState> updateUserFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeValues();
    super.onInit();

  }



  Future<void> initializeValues()  async{
    name.text= userController.user.value.name;
    email.text= userController.user.value.email;
    password.text= userController.user.value.password;
    userName.text= userController.user.value.userName;

  }


  Future<void> updateUserName() async{
    try{

      // Start Loading
      HFullScreenLoader.openLoadingDialog('We are updating your information', HImages.loadingSearch);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        HFullScreenLoader.stopLoading();
        return;
      }


      Map<String, dynamic> Name= {'Name': name.text.trim(),'UserName' : userName.text.trim()};
      await userRepository.updateSingleField(Name);

      // Update the RX User value

      userController.user.value.name =name.text.trim();
      userController.user.value.userName =userName.text.trim();

      // Remove the Loader
      HFullScreenLoader.stopLoading();


      // Show Success Message
      HLoaders.successSnackBar(title: 'Congratulations',message: 'Your profile has been update');

      Get.off(()=> const ProfileScreen());

    }catch(e){
      HFullScreenLoader.stopLoading();
      HLoaders.errorSnackBar(title: 'Oh snap!',message: e.toString());
    }

  }

}
