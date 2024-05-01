import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../foget_password/ForgetPassword.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: HSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// Email

            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: HTexts.email),
            ),

            const SizedBox(height: HSizes.spaceBtwInputFields),
///  Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: HTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: HSizes.spaceBtwInputFields / 2),

            /// Remember me and forgot password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me

                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(HTexts.rememberMe),
                  ],
                ),

                /// Forgot password

                TextButton(
                    onPressed: ()=> Get.to(()=> const ForgotPassword()),
                    child: const Text(HTexts.forgetPassword))
              ],
            ),

            const SizedBox(height: HSizes.spaceBtwSections),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){}, child: Text(HTexts.login,style: Theme.of(context).textTheme.headlineSmall)))
          ],
        ),
      ),
    );
  }
}