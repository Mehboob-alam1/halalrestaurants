import 'package:flutter/material.dart';

import '../../../utils/constants/image_string.dart';

class LowerPattern extends StatelessWidget {
  const LowerPattern({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -1,
        left: -1,
        child: Image.asset(
          HImages.lowerPattern,
          width: 300,
          height: 300,
        ));
  }
}