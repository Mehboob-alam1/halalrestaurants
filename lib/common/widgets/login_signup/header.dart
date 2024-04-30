import 'package:flutter/material.dart';

import '../../../utils/constants/HSizes.dart';


class HHeader extends StatelessWidget {
  const HHeader({
    super.key, required this.image, required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 100,
          width: 100,
        ),
        const SizedBox(height: HSizes.spaceBtwItems),
        Text(
         text,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
