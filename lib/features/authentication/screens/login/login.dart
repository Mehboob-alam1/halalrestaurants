import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/common/widgets/pattern/lower_pattern.dart';
import 'package:halalrestaurants/common/widgets/pattern/upper_pattern.dart';
import 'package:halalrestaurants/features/authentication/screens/login/widgets/login_form.dart';
import 'package:halalrestaurants/features/authentication/screens/signup/sign_up.dart';
import 'package:halalrestaurants/utils/constants/HSizes.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';
import 'package:halalrestaurants/utils/constants/text_strings.dart';
import 'package:halalrestaurants/utils/helpers/helper_funtions.dart';

import '../../../../common/widgets/login_signup/footer_text.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/header.dart';
import '../../../../common/widgets/login_signup/logo_text_outline_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const UpperPattern(),

            SizedBox(
              height: HHelperFunctions.screenHeight(),
              child:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const HHeader(image: HImages.appLogo,text: HTexts.login),
                    const LoginForm(),

                    /// Divider

                    const HFormDivider(dividerText: HTexts.continueWithLogin),

                    const SizedBox(height: HSizes.spaceBtwSections),

                    const HLogoTextOutlinedButton(logo: HImages.googleLogo,text: HTexts.loginGoogle),

                    /// Footer

                    const SizedBox(height: HSizes.spaceBtwItems),
                    FooterText(firstText: HTexts.dontAccount,secondText:HTexts.signUp,onTap: ()=> Get.to(()=> const SignUp()),)
                  ],
                ),
              ),
            ),

            const LowerPattern(),


          ],
        ),
      ),
    );
  }
}




