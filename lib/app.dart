import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/utils/themes/theme.dart';

import 'features/authentication/screens/start/start.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: HAppTheme.lightTheme,
      darkTheme: HAppTheme.darkTheme,
      home: const StartScreen(),
    );
  }
}