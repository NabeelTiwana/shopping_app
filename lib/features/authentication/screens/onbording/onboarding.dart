import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/features/authentication/screens/onbording/witdgets/onboarding_page.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/helpers/device_helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Scrollable Page
          PageView(
            children: [
              OnBoardingPage(animation: MyImages.onboarding1Animation,title: MyText.onboardingTitle1,subTitle: MyText.onboardingSubTitle1,),
              OnBoardingPage(animation: MyImages.onboarding2Animation,title: MyText.onboardingTitle2,subTitle: MyText.onboardingSubTitle2,),
              OnBoardingPage(animation: MyImages.onboarding3Animation,title: MyText.onboardingTitle3,subTitle: MyText.onboardingSubTitle3,),

            ],
          ),
          //Indicators
          OnBoardingDotNavigation(),
          //Bottom Button
          Positioned(
            bottom: MySizes.spaceBtwItems,
              left: 0,
              right: 0,
              child: MyElevatedButton()),
        ],
      ),
    );
  }
}



class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MyDeviceHelper.getBottomNavigationBarHeight()*4,
        left: MyDeviceHelper.getScreenWidth(context)/2.5,
        right: MyDeviceHelper.getScreenWidth(context)/2.5,
        child: SmoothPageIndicator(controller: PageController(), count: 3,effect: ExpandingDotsEffect(dotHeight: 6.0),));
  }
}


