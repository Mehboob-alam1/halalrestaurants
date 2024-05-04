import 'package:flutter/material.dart';
import 'package:halalrestaurants/utils/constants/colors.dart';
import 'package:halalrestaurants/utils/helpers/helper_funtions.dart';

import '../../../utils/constants/HSizes.dart';


class HFormDivider extends StatelessWidget {
  const HFormDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark= HHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ?HColors.darkerGrey: HColors.grey,
            indent: 60,            thickness: 0.5,

            endIndent: 5,
          ),
        ),
        const SizedBox(width: HSizes.spaceBtwInputFields/2),

        Text(dividerText,style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: HSizes.spaceBtwInputFields/2),
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: dark ?HColors.darkerGrey: HColors.grey,
            indent: 5,
            endIndent:60,
          ),
        ),
      ],
    );
  }
}