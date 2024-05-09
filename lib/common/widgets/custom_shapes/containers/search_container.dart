import 'package:flutter/material.dart';
import 'package:halalrestaurants/utils/constants/HSizes.dart';
import 'package:halalrestaurants/utils/constants/colors.dart';
import 'package:halalrestaurants/utils/devices/device_utility.dart';
import 'package:halalrestaurants/utils/helpers/helper_funtions.dart';
import 'package:iconsax/iconsax.dart';

class HSearchContainer extends StatelessWidget {
  const HSearchContainer({super.key, required this.padding, required this.showBackground, required this.showBorder, required this.text});

  final EdgeInsetsGeometry padding;
  final bool showBackground,showBorder;
   final String text;

  @override
  Widget build(BuildContext context) {

    final dark = HHelperFunctions.isDarkMode(context);
    return Container(
      width: HDeviceUtils.getScreenWidth(context),
      padding: EdgeInsets.all(HSizes.md),
      decoration: BoxDecoration(
        color: showBackground? dark ? HColors.dark :HColors.light :Colors.transparent,
        borderRadius: BorderRadius.circular(HSizes.cardRadiusSm),
        border: showBorder ? Border.all(color: HColors.grey) : null
      ),
      child: Row(
        children: [
          Icon(Iconsax.search_normal,color: HColors.darkerGrey,),
          const SizedBox(width: HSizes.spaceBtwItems),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
