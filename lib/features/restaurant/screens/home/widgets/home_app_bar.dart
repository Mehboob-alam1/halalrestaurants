import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Discover new\nculinary delights!',
            style: Theme.of(context).textTheme.headlineSmall),
        GestureDetector(onTap: onPressed, child: const Icon(Iconsax.notification))
      ],
    );
  }
}
