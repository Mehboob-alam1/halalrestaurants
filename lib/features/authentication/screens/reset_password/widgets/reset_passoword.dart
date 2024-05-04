import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/authentication/screens/login/login.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../common/success_screen/success_screen.dart';
import '../../../../../common/widgets/login_signup/header.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/text_strings.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: HSpacingStyle.paddingNotOnlyTop,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HHeader(image: HImages.appLogo, text: HTexts.resetPassword),
            const SizedBox(height: HSizes.spaceBtwItems),
            Text(
              HTexts.resetPasswordSubTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: HSizes.spaceBtwItems),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: HTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: HSizes.spaceBtwInputFields),

            /// Confirm password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: HTexts.confirmPassword,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: HSizes.spaceBtwSections),
            Padding(
              padding: HSpacingStyle.paddingNotOnlyTop,
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(
                            () => SuccessScreen(
                              image: HImages.appLogo,
                              title: HTexts.passwordChanged,
                              subTitle: HTexts.passwordChangedSubTitle,
                              buttonText: HTexts.backToLogin,
                              onPressed: () =>
                                  Get.offAll(() => const LoginScreen()),
                            ),
                          ),
                      child: Text(HTexts.resetPassword,
                          style: Theme.of(context).textTheme.headlineSmall))),
            ),
          ],
        ),
      ),
    );
  }
}
