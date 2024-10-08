import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/authentication/screens/reset_password/reset_password.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../common/widgets/login_signup/header.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/password/reset_password_controller.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(ResetPasswordController());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const HHeader(image: HImages.appLogo, text: HTexts.forgetPassword),
          const SizedBox(height: HSizes.spaceBtwItems),
          Padding(
            padding: HSpacingStyle.paddingNotOnlyTop,
            child: Column(
              children: [
                Text(
                  HTexts.forgotPasswordSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: HSizes.spaceBtwItems),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: HTexts.email),
                ),
                const SizedBox(height: HSizes.spaceBtwSections),
                Padding(
                  padding: HSpacingStyle.paddingNotOnlyTop,
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: ()=>  controller.resetPassword(),
                          child: Text(HTexts.sendCode,
                              style: Theme.of(context).textTheme.headlineSmall))),
                ),

              ],
            ),
          )


        ],
      ),
    );
  }
}

