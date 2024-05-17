import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/authentication/controllers/signup/signup_controller.dart';
import 'package:halalrestaurants/utils/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../common/widgets/login_signup/footer_text.dart';
import '../../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../../common/widgets/login_signup/logo_text_outline_button.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../login/login.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signUpFormKey,
      child: Padding(
        padding: HSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// User Name
            TextFormField(
              validator: (value) =>
                  HValidator.validateEmptyText('User Name', value),
              controller: controller.name,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user), labelText: HTexts.userName),
            ),

            const SizedBox(height: HSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => HValidator.validateEmail(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: HTexts.email),
            ),
            const SizedBox(height: HSizes.spaceBtwInputFields),

            ///  Phone Number
            TextFormField(
              controller: controller.phone,
              validator: (value) => HValidator.validatePhoneNumber(value),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: HTexts.phoneNumber),
            ),
            const SizedBox(height: HSizes.spaceBtwInputFields),

            /// Password

            Obx(
             ()=> TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (value) => HValidator.validatePassword(value),
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: HTexts.password,
                  suffixIcon: IconButton(
                    onPressed: ()=>controller.hidePassword.value = !controller.hidePassword.value,
                    icon:  Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),

                  ),
                ),
              ),
            ),

            const SizedBox(height: HSizes.spaceBtwSections),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: ()=>controller.signup(),
                    child: Text(HTexts.signUp,
                        style: Theme.of(context).textTheme.headlineSmall))),

            const SizedBox(height: HSizes.spaceBtwItems),
            const HFormDivider(dividerText: HTexts.continueWithLogin),
            const SizedBox(height: HSizes.spaceBtwSections),
            const HLogoTextOutlinedButton(
              logo: HImages.googleLogo,
              text: HTexts.loginGoogle,
              padding: EdgeInsets.zero,
            ),

            const SizedBox(height: HSizes.spaceBtwItems),
            FooterText(
              firstText: HTexts.alreadyHaveAccount,
              secondText: HTexts.login,
              onTap: () => Get.off(() => const LoginScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
