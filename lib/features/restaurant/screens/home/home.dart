import 'package:flutter/material.dart';
import 'package:halalrestaurants/common/styles/spacing_styles.dart';
import 'package:halalrestaurants/common/widgets/text/section_heading.dart';
import 'package:halalrestaurants/features/restaurant/screens/home/widgets/home_app_bar.dart';
import 'package:halalrestaurants/utils/constants/HSizes.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';

import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: HSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              HomeAppBar(onPressed: () {}),
              const SizedBox(height: HSizes.spaceBtwItems),
              const HSearchContainer(
                padding: HSpacingStyle.paddingNotOnlyTop,
                showBackground: false,
                showBorder: true,
                text: 'Search restaurants',
              ),
              const SizedBox(height: HSizes.spaceBtwItems),
              const HSectionHeading(
                  title: 'Top-rated restaurant', showActionButton: false),
              const SizedBox(height: HSizes.spaceBtwItems),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Image.asset(HImages.promoBanner1),
                    Positioned(
                        top: HSizes.md,
                        left: HSizes.md,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Special offer\nfor march',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: HColors.white),
                            ),

                            Text(
                              'We are here with the Best Restaurant in town.',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .apply(color: HColors.white),
                            ),
                            SizedBox(
                              height: HSizes.spaceBtwItems ,
                            ),
                            SizedBox(
                              width: 120,

                              child: TextButton(
                                style: TextButton.styleFrom(backgroundColor: HColors.white,side: BorderSide.none),

                                onPressed: () {},
                                child: Text('Explore Now',style: Theme.of(context).textTheme.labelSmall,),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
