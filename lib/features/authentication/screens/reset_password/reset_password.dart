import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/common/success_screen/success_screen.dart';
import 'package:halalrestaurants/common/widgets/login_signup/header.dart';
import 'package:halalrestaurants/features/authentication/screens/reset_password/widgets/reset_passoword.dart';
import 'package:halalrestaurants/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/pattern/lower_pattern.dart';
import '../../../../common/widgets/pattern/upper_pattern.dart';
import '../../../../utils/constants/HSizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../foget_password/widgets/fogot_page.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          UpperPattern(),
          LowerPattern(),
          ResetPasswordPage()
        ],
      ),
    );
  }
}

