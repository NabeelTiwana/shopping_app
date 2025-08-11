import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/authentication/controller/onboarding/onboarding_contoroller.dart';
import 'package:shopping_app/features/authentication/screens/onbording/witdgets/onboarding_dot_navigations.dart';
import 'package:shopping_app/features/authentication/screens/onbording/witdgets/onboarding_next_button.dart';
import 'package:shopping_app/features/authentication/screens/onbording/witdgets/onboarding_page.dart';
import 'package:shopping_app/features/authentication/screens/onbording/witdgets/onboarding_skip.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(onBoardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        child: Stack(
          children: [
            //Scrollable Page
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  animation: MyImages.onboarding1Animation,
                  title: MyText.onboardingTitle1,
                  subTitle: MyText.onboardingSubTitle1,
                ),
                OnBoardingPage(
                  animation: MyImages.onboarding2Animation,
                  title: MyText.onboardingTitle2,
                  subTitle: MyText.onboardingSubTitle2,
                ),
                OnBoardingPage(
                  animation: MyImages.onboarding3Animation,
                  title: MyText.onboardingTitle3,
                  subTitle: MyText.onboardingSubTitle3,
                ),
              ],
            ),
            //Indicators
            OnBoardingDotNavigation(),
            //Bottom Button
            OnBoardingNextButton(),

            //Skip Button
            OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}



