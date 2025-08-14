import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constant/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        selectedIndex: selectedIndex,
        backgroundColor: MyColor.light,
        indicatorColor: MyColor.black.withValues(alpha: 0.1),
        onDestinationSelected: (index) {
          selectedIndex = index;
        },

        destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
