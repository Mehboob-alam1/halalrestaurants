import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/authentication/screens/login/login.dart';
import 'package:halalrestaurants/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../common/widgets/login_signup/footer_text.dart';
import '../../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../../common/widgets/login_signup/header.dart';
import '../../../../../common/widgets/login_signup/logo_text_outline_button.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_funtions.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HHelperFunctions.screenHeight(),
      child: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              HHeader(
                  image: HImages.appLogo, text: HTexts.createAnAccount),
              Center(
                child: SignUpForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

