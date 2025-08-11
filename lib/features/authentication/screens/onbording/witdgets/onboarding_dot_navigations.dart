import 'package:flutter/cupertino.dart';
import 'package:shopping_app/features/authentication/controller/onboarding/onboarding_contoroller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/helpers/device_helper.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=onBoardingController.instance;
    return Positioned(
      bottom: MyDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: MyDeviceHelper.getScreenWidth(context) / 3,
      right: MyDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller:controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
