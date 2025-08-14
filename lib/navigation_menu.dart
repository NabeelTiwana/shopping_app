import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constant/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return Scaffold(
      body:Obx(()=> controller.screens[controller.selectedIndex.value],),
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: MyColor.light,
          indicatorColor: MyColor.black.withValues(alpha: 0.1),
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },

          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
class NavigationController extends GetxController{
  RxInt  selectedIndex = 0.obs;

  List<Widget>screens=[Container(color:Colors.red),];

}
