import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/HSizes.dart';


class HProfileMenuIcon extends StatelessWidget {
  const HProfileMenuIcon({
    super.key,  this.icon, required this.text,  this.isImageIcon=false, this.imageIcon,
  });

  final IconData? icon;
  final String text;
  final bool isImageIcon;
  final String? imageIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: HSizes.defaultSpace/1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(isImageIcon)
                Image.asset(imageIcon!,height: 30,width: 30)
              else
               Icon(icon),
              const SizedBox(width: HSizes.sm),
              Center(child: Text(text,style: Theme.of(context).textTheme.bodyLarge,textAlign:TextAlign.center,)),
            ],
          ),
          const Icon(Iconsax.arrow_right_3),
        ],
      ),
    );
  }
}