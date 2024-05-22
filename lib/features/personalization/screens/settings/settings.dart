import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halalrestaurants/common/styles/spacing_styles.dart';
import 'package:halalrestaurants/common/widgets/appbar/app_bar.dart';
import 'package:halalrestaurants/common/widgets/text/section_heading.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/widgets/profile_menu_icon.dart';
import 'package:halalrestaurants/utils/constants/HSizes.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';



class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HAppBar(

        showBackArrow: true,
        actions: [
          Icon(Iconsax.notification)
        ],
      ),

      body: Padding(
        padding: HSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            const HSectionHeading(title: 'Account',showActionButton: false),

            SizedBox(height: HSizes.defaultSpace),

            HProfileMenuIcon(icon: Iconsax.user, text: 'Profile'),
            HProfileMenuIcon(icon: Iconsax.lock_1, text: 'Password'),
            HProfileMenuIcon(icon: Iconsax.notification, text: 'Notifications'),

            SizedBox(height: HSizes.defaultSpace),

            const HSectionHeading(title: 'Categories',showActionButton: false),

            SizedBox(height: HSizes.defaultSpace),

            HProfileMenuIcon(text: 'Explore Cuisines',isImageIcon: true,imageIcon: HImages.forkSpoonIcon),
            HProfileMenuIcon(icon: Iconsax.star, text: 'Rate & Review'),
            HProfileMenuIcon(icon: Icons.help_outline_sharp, text: 'Help'),
            
            HProfileMenuIcon(text: 'Logout',icon: Iconsax.logout,)
          ],
        ),
      ),
    );
  }
}

