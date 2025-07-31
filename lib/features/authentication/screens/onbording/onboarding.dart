import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';

import '../../../../utils/helpers/device_helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(),
              OnBoardingPage(),
              OnBoardingPage(),
            ],
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MySizes.defaultSpace,
        right: MySizes.defaultSpace,
        top: MyDeviceHelper.getAppBarHeight(),
      ),
      child: Column(
        children: [
          Lottie.asset(MyImages.onboarding1Animation),
          Text(
            MyText.onboardingTitle1,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            MyText.onboardingSubTitle1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
