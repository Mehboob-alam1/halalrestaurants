import 'package:flutter/material.dart';
import 'package:halalrestaurants/common/styles/spacing_styles.dart';
import 'package:lottie/lottie.dart';

import '../../utils/constants/HSizes.dart';
import '../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Lottie.asset(image,width: MediaQuery.of(context).size.width*0.6),

              const SizedBox(height: HSizes.spaceBtwSections),

              ///Title & Sub Title

              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: HSizes.spaceBtwItems),

              Text(subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: HSizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed, child: const Text(HTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}