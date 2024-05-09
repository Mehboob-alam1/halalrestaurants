import 'package:flutter/material.dart';

class HSectionHeading extends StatelessWidget {
  const HSectionHeading(
      {super.key,
      required this.title,
       this.showActionButton=true,
       this.onPressed,
         this.buttonTitle ='See all'});

  final String title;
  final bool showActionButton;
  final VoidCallback? onPressed;
  final String buttonTitle;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

        ),
        if(showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
