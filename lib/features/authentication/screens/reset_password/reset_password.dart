import 'package:flutter/material.dart';
import 'package:halalrestaurants/features/authentication/screens/reset_password/widgets/reset_passoword.dart';

import '../../../../common/widgets/pattern/lower_pattern.dart';
import '../../../../common/widgets/pattern/upper_pattern.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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

