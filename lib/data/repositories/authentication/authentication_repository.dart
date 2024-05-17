import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:halalrestaurants/features/authentication/screens/start/start.dart';
import 'package:halalrestaurants/utils/exceptions/firebase_exceptions.dart';
import 'package:halalrestaurants/utils/exceptions/format_exceptions.dart';
import 'package:halalrestaurants/utils/exceptions/platform_exceptions.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../utils/exceptions/firebase_auth_exceptions.dart';

class AuthenticationRepository extends GetxController {

  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();

    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    Get.offAll(const StartScreen());
  }

  /// [EMAIL AUTHENTICATION] -REGISTER

  Future<UserCredential> registerWithEmailAndPassword(String email,
      String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    }on FirebaseAuthException catch (e){
        throw HFirebaseAuthException(e.code).message;
    }on FirebaseException catch(e){
      throw HFirebaseException(e.code).message;
    }on FormatException catch(e){
      throw const HFormatException();
    }on PlatformException catch(e){
      throw HPlatformException(e.code).message;
    }catch(e){
      throw 'Something went wrong. Please try again.';
    }
  }

  /// [LOGOUT] - Valid for any authentication

  Future<void> logout() async{


    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    }on FirebaseAuthException catch(e){
      throw HFirebaseAuthException(e.code).message;
    }on FirebaseException catch(e){
      throw HFirebaseException(e.code).message;
    }on FormatException catch(_){
      throw const HFormatException();
    }on PlatformException catch(e){
      throw HPlatformException(e.code).message;
    }catch(e){
      throw 'Something went wrong. Please try again';
    }
  }
}