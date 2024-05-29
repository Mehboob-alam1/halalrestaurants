import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/common/widgets/appbar/app_bar.dart';
import 'package:halalrestaurants/features/personalization/controllers/user_controller.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/profile/edit_profile.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/profile/widgets/follower_section.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/profile/widgets/rounded_container_text_button.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/profile/widgets/row_icon_text.dart';
import 'package:halalrestaurants/utils/constants/HSizes.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/images/h_circular_image.dart';
import '../../../../../utils/shimmer/h_shimmer_effect.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar:  HAppBar(
        showBackArrow: true,
        title: Text(controller.user.value.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Center(
            child: Column(
              children: [
                Obx( () {
                  final netWorkImage= controller.user.value.profilePicture;
                  final image = netWorkImage.isNotEmpty ? netWorkImage : HImages.userProfileImage;


                  return controller.imageUploading.value ? const HShimmerEffect(width: 100, height: 100,radius: 100,):
                  HCircularImage(
                    image: image,
                    width: 100,
                    height: 100,
                    isNetworkImage: netWorkImage.isNotEmpty,

                  );
                }),
                const SizedBox(height: HSizes.sm),
                Text("@${controller.user.value.userName}",
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: HSizes.sm),
                Text('Member since September 2024',
                    style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(height: HSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        onPressed: ()=> Get.to(()=>const EditProfileScreen()),
                        child: Text('Edit profile',
                            style: Theme.of(context).textTheme.labelLarge)),
                    const SizedBox(width: HSizes.defaultSpace),
                    OutlinedButton(
                        onPressed: () {},
                        child: Text('Share Profile',
                            style: Theme.of(context).textTheme.labelLarge)),
                  ],
                ),
                const SizedBox(height: HSizes.spaceBtwItems),
                const WFollowerSection(),
                const SizedBox(height: HSizes.spaceBtwSections),
                const Column(
                  children: [
                    HRowIconsText(
                        title: 'Been',
                        value: '23',
                        iconData: Icons.check_circle_outline),
                    Divider(),
                    HRowIconsText(
                        title: 'Want to try',
                        value: '54',
                        iconData: Icons.bookmark_border_outlined),
                    Divider(),
                    HRowIconsText(
                        title: 'Recs for you',
                        value: '',
                        iconData: Icons.favorite_outline_outlined),
                    Divider(),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: HOutlinedRoundedContainerTextButton(
                      title: 'Rank on halal food',
                      subTitle: '-',
                      iconData: Iconsax.add,
                    )),
                    SizedBox(width: HSizes.md),
                    Flexible(
                        child: HOutlinedRoundedContainerTextButton(
                      title: 'Current Streak',
                      subTitle: '0 weeks',
                      iconData: Icons.fireplace,
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
