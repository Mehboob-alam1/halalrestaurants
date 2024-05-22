import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/common/widgets/loaders/t_loaders.dart';
import 'package:halalrestaurants/features/authentication/models/user/user_model.dart';

import '../../../data/repositories/user/user_repository.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  /// Save user Record from any registration provider

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        // Map Data

        final user = UserModel(
            id: userCredential.user!.uid,
            name: userCredential.user!.displayName ?? '',
            phoneNumber: userCredential.user!.phoneNumber ?? '',
            email: userCredential.user!.email ?? '',
            password: '',
            profilePicture: userCredential.user!.photoURL ?? '');

        // Save user data
        await userRepository.saveUserRecord(user);


      }
    } catch (e) {
      HLoaders.warningSnackBar(title: 'Data not saved', message: 'Something went wrong while saving your information. You can re-save your data in your profile');
    }
  }
}
