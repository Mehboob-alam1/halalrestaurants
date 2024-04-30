import 'package:flutter/material.dart';

import '../../../utils/constants/HSizes.dart';



class HLogoTextOutlinedButton extends StatelessWidget {
  const HLogoTextOutlinedButton({
    super.key, required this.logo, required this.text, this.padding=const EdgeInsets.symmetric(horizontal: HSizes.defaultSpace),
  });

  final String logo;
  final String text;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      padding,
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {},
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
