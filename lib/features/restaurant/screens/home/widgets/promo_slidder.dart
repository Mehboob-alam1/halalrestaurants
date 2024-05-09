import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/HSizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../controllers/home_controller.dart';



class HPromoSlider extends StatelessWidget {
  const HPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => HRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index,_) => controller.updatePageIndicator(index)
          ),

        ),
        const SizedBox(height: HSizes.spaceBtwItems),

        Row(
          children: [
            for(int i=0;i<banners.length;i++)
              HCircularContainer(width: 20, height: 4, margin: const EdgeInsets.only(right: 10),backgroundColor:controller.carousalCurrentIndex.value==i? HColors.primary: HColors.grey),
          ],
        )
      ],
    );
  }
}
