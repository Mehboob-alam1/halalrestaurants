import 'package:flutter/material.dart';

import '../../../utils/constants/HSizes.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(firstText, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: HSizes.defaultSpace / 2),
         Text(
          secondText,
          style: const TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
