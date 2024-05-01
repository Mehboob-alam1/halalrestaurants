import 'package:flutter/material.dart';
import 'package:halalrestaurants/common/widgets/pattern/lower_pattern.dart';
import 'package:halalrestaurants/common/widgets/pattern/upper_pattern.dart';
import 'package:halalrestaurants/features/authentication/screens/foget_password/widgets/fogot_page.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          UpperPattern(),
          LowerPattern(),
          ForgotPasswordPage()
        ],
      ),
    );
  }
}

