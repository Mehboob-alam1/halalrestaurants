import 'package:flutter/material.dart';

import '../../../utils/constants/image_string.dart';

class UpperPattern extends StatelessWidget {
  const UpperPattern({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -1,
        right: -1,
        child: Image.asset(
          HImages.upperPattern,
          width: 300,
          height: 300,
        ));
  }
}
