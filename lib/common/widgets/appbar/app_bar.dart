import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/HSizes.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/devices/device_utility.dart';
import '../../../utils/helpers/helper_funtions.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HAppBar({super.key, this.title, required this.showBackArrow, this.leadingIcon, this.actions, this.leadingOnPressed});


  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        leading: showBackArrow
            ? IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Iconsax.arrow_left, color: dark ? HColors.white : HColors.dark,))
            : leadingIcon != null
            ? IconButton(
            onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,

        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(HDeviceUtils.getAppBarHeight());
}