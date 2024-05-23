import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/common/styles/spacing_styles.dart';
import 'package:halalrestaurants/common/widgets/appbar/app_bar.dart';
import 'package:halalrestaurants/common/widgets/text/section_heading.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/profile/profile.dart';
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

            const SizedBox(height: HSizes.defaultSpace),

            HProfileMenuIcon(icon: Iconsax.user, text: 'Profile', onPressed: ()=> Get.to(const ProfileScreen())),
            HProfileMenuIcon(icon: Iconsax.lock_1, text: 'Password', onPressed: () {  },),
            HProfileMenuIcon(icon: Iconsax.notification, text: 'Notifications', onPressed: () {  },),

            const SizedBox(height: HSizes.defaultSpace),

            const HSectionHeading(title: 'Categories',showActionButton: false),

            const SizedBox(height: HSizes.defaultSpace),

            HProfileMenuIcon(text: 'Explore Cuisines',isImageIcon: true,imageIcon: HImages.forkSpoonIcon, onPressed: () {  },),
            HProfileMenuIcon(icon: Iconsax.star, text: 'Rate & Review', onPressed: () {  },),
            HProfileMenuIcon(icon: Icons.help_outline_sharp, text: 'Help', onPressed: () {  },),
            
            HProfileMenuIcon(text: 'Logout',icon: Iconsax.logout, onPressed: () {  },)
          ],
        ),
      ),
    );
  }
}

