import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/authentication/screens/signup/sign_up.dart';
import 'package:halalrestaurants/utils/constants/text_strings.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../login/login.dart';
class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HSpacingStyle.paddingWithAppBarHeight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              HImages.appLogo,
              height: 100,
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: ()=>Get.to(()=>const LoginScreen()),
                    child:   const Text(HTexts.login),
                  ),
                ),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUp()),
                    child:  Text(HTexts.signUp,style:Theme.of(context).textTheme.bodyLarge),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}