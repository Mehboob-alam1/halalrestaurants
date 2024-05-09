import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halalrestaurants/features/restaurant/screens/home/home.dart';
import 'package:iconsax/iconsax.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller  = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(

        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value=index,
          destinations:const [
           NavigationDestination(icon: Icon(Iconsax.home_1), label: 'Home'),
           NavigationDestination(icon: Icon(Iconsax.search_normal), label: 'Search'),
           NavigationDestination(icon: Icon(Iconsax.heart), label: 'Like'),
           NavigationDestination(icon: Icon(Iconsax.setting_2), label: 'Setting'),
          ],
        
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{

  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),

    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
