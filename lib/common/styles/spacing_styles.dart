import 'package:flutter/cupertino.dart';

import '../../utils/constants/HSizes.dart';

class HSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: HSizes.appBarHeight,
    left: HSizes.defaultSpace,
    right: HSizes.defaultSpace,
    bottom: HSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingNotOnlyTop = EdgeInsets.only(
    left: HSizes.defaultSpace,
    right: HSizes.defaultSpace,
    bottom: HSizes.defaultSpace,
  );
}
