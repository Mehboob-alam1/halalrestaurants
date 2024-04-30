import 'package:flutter/material.dart';
import 'package:halalrestaurants/common/widgets/pattern/lower_pattern.dart';
import 'package:halalrestaurants/common/widgets/pattern/upper_pattern.dart';
import 'package:halalrestaurants/features/authentication/screens/signup/widgets/sign_up_page.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            UpperPattern(),
            SignUpPage(),
            LowerPattern(),
          ],
        ),
      ),
    );
  }
}


