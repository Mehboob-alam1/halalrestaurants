import 'package:flutter/material.dart';
import 'package:halalrestaurants/utils/constants/HSizes.dart';


class HOutlinedRoundedContainerTextButton extends StatelessWidget {
  const HOutlinedRoundedContainerTextButton({super.key, required this.title, required this.subTitle, required this.iconData});

  final String title,subTitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey)


      ),
      child: Padding(
        padding: EdgeInsets.all(HSizes.xs),
        child: Row(

          children: [
            Icon(iconData),
            SizedBox(width: HSizes.md),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.labelSmall,),
                SizedBox(height: HSizes.sm),
                Text(subTitle,style: Theme.of(context).textTheme.bodyMedium),
              ],
            )
          ],
        ),
      ),
    );
  }
}
