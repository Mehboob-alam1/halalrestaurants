import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../utils/constants/HSizes.dart';

class HRowIconsText extends StatelessWidget {
  const HRowIconsText({
    super.key,
    required this.iconData,
    required this.title,
    required this.value,
  });

  final IconData iconData;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: HSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconData),
              const SizedBox(width: HSizes.md),
              Text(title, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          Row(
            children: [
              Text(value, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(width: HSizes.sm),
              const Icon(Iconsax.arrow_right_3)
            ],
          )
        ],
      ),
    );
  }
}
