import 'package:flutter/material.dart';
import 'package:halalrestaurants/common/styles/spacing_styles.dart';
import 'package:halalrestaurants/common/widgets/pattern/lower_pattern.dart';
import 'package:halalrestaurants/common/widgets/pattern/upper_pattern.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';

import '../../utils/constants/HSizes.dart';
import '../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.buttonText, required this.onPressed});

  final String image;
  final String title;
  final String subTitle;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          UpperPattern(),
          LowerPattern(),


          Center(
            child: Padding(
              padding: HSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    image,
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: HSizes.spaceBtwSections),
                  Text(
                   title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: HSizes.spaceBtwSections),
                  Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),

                  SizedBox(height: HSizes.spaceBtwSections),

                  Padding(
                    padding: HSpacingStyle.paddingNotOnlyTop,
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: onPressed,
                            child: Text(buttonText,
                                style: Theme.of(context).textTheme.headlineSmall))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
