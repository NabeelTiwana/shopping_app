import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/utils/constant/images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
           children: [
             Column(
               children: [
                 Lottie.asset(MyImages.onboarding1Animation),
                 Text(),
               ],
             ),

           ],
          ),
        ],
      ),
    );
  }
}
