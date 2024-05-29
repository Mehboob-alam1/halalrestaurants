import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:halalrestaurants/common/styles/spacing_styles.dart';
import 'package:halalrestaurants/features/personalization/screens/settings/profile/widgets/profile_menu.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/app_bar.dart';
import '../../../../../common/widgets/images/h_circular_image.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/shimmer/h_shimmer_effect.dart';
import '../../../controllers/profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    return Scaffold(
      appBar: const HAppBar(
        showBackArrow: true,
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyle.paddingNotOnlyTop,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Stack(
                    children: [
                      Obx( () {
                        final netWorkImage= controller.userController.user.value.profilePicture;
                        final image = netWorkImage.isNotEmpty ? netWorkImage : HImages.userProfileImage;


                        return controller.userController.imageUploading.value ? const HShimmerEffect(width: 100, height: 100,radius: 100,):
                        HCircularImage(
                          image: image,
                          width: 100,
                          height: 100,
                          isNetworkImage: netWorkImage.isNotEmpty,

                        );
                      }),

                      Positioned(
                          bottom: 0,
                          right: 5,
                          child: GestureDetector(
          onTap: ()=> controller.userController.uploadUserProfilePicture(),
                            child: Image.asset(HImages.cameraEditProfile,
                                height: 25, width: 25),
                          )),
                    ],
                  ),
                ),
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Name

                    Text('Name', style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: HSizes.spaceBtwItems / 2),
                    TextFormField(controller: controller.name,decoration: const InputDecoration(suffixIcon: Icon(Iconsax.edit))),


                    const SizedBox(height: HSizes.spaceBtwInputFields),




                    const SizedBox(height: HSizes.spaceBtwInputFields),
                    /// User Name

                    Text('User name', style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: HSizes.spaceBtwItems / 2),
                    TextFormField(controller: controller.userName,decoration: const InputDecoration(suffixIcon: Icon(Iconsax.edit))),



                    const SizedBox(height: HSizes.spaceBtwInputFields),


                    /// Email

                     HProfileMenu(title: 'Email', value: controller.userController.user.value.email,showDownArrow: false),
                    /// Password
                    const SizedBox(height: HSizes.spaceBtwInputFields),

                    HProfileMenu(title: 'Password', value: controller.userController.user.value.password,showDownArrow: false),

                    const SizedBox(height: HSizes.spaceBtwInputFields),


                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> controller.updateUserName(),
                  child: const Text(HTexts.save),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
