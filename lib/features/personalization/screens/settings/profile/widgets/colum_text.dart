import 'package:flutter/material.dart';

import '../../../../../../utils/constants/HSizes.dart';


class HColumText extends StatelessWidget {
  const HColumText({
    super.key, required this.titleNo,  required this.subTitle,
  });
  final String titleNo;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titleNo,
            style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: HSizes.sm),
        Text(subTitle,
            style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}