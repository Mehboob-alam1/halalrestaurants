import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/authentication/controllers/login/login_controller.dart';

import '../../../utils/constants/HSizes.dart';



class HLogoTextOutlinedButton extends StatelessWidget {
  const HLogoTextOutlinedButton({
    super.key,
    required this.logo,
    required this.text,
    this.padding=const EdgeInsets.symmetric(horizontal: HSizes.defaultSpace),
  });

  final String logo;
  final String text;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final controller= Get.put(LoginController());
    return Padding(
      padding:
      padding,
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () =>controller.googleSignIn(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logo,
                height: 20,
                width: 20,
              ),
              const SizedBox(width: HSizes.spaceBtwSections / 2),
              Text(
                text,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
