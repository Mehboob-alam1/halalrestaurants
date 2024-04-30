import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HHeader(
                image: HImages.appLogo, text: HTexts.createAnAccount),
            Center(
              child: Form(
                child: Padding(
                  padding: HSpacingStyle.paddingWithAppBarHeight,
                  child: Column(
                    children: [
                      /// User Name
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: HTexts.userName),
                      ),

                      const SizedBox(
                          height: HSizes.spaceBtwInputFields),

                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: HTexts.email),
                      ),
                      const SizedBox(
                          height: HSizes.spaceBtwInputFields),

                      ///  Phone Number
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.mobile),
                            labelText: HTexts.phoneNumber),
                      ),
                      const SizedBox(
                          height: HSizes.spaceBtwInputFields),

                      /// Password

                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: HTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),

                      const SizedBox(height: HSizes.spaceBtwSections),

                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(HTexts.signUp,
                                  style: Theme.of(context).textTheme.headlineSmall))),

                      const SizedBox(height: HSizes.spaceBtwItems),
                      const HFormDivider(dividerText: HTexts.continueWithLogin),
                      const SizedBox(height: HSizes.spaceBtwSections),
                      const HLogoTextOutlinedButton(logo: HImages.googleLogo,text: HTexts.loginGoogle,padding: EdgeInsets.zero,),

                      const SizedBox(height: HSizes.spaceBtwItems),
                      const FooterText(firstText: HTexts.alreadyHaveAccount, secondText: HTexts.login),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}