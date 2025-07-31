import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: ,right: ,top:),
               child: Column(
                 children: [
                   Lottie.asset(MyImages.onboarding1Animation),
                   Text(MyText.onboardingTitle1,style: Theme.of(context).textTheme.headlineMedium,),
                   Text(MyText.onboardingSubTitle1,textAlign: TextAlign.center,),
                 ],
               ),
             ),

           ],
          ),
        ],
      ),
    );
  }
}
