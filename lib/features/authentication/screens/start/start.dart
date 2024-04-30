import 'package:flutter/material.dart';

import 'package:halalrestaurants/features/authentication/screens/start/widgets/middle_section.dart';

import '../../../../common/widgets/pattern/lower_pattern.dart';
import '../../../../common/widgets/pattern/upper_pattern.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          UpperPattern(),
          LowerPattern(),
          MiddleSection(),



        ],
      ),
    );
  }
}






