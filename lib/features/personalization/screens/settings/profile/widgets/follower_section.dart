import 'package:flutter/material.dart';

import 'colum_text.dart';

class WFollowerSection extends StatelessWidget {
  const WFollowerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HColumText(titleNo: '1', subTitle: 'Followers'),
        HColumText(titleNo: '544', subTitle: 'Following'),
        HColumText(titleNo: '-', subTitle: 'Rank on halal food'),

      ],
    );
  }
}
