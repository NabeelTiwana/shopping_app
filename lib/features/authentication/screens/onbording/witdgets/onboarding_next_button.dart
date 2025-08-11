
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shopping_app/features/authentication/controller/onboarding/onboarding_contoroller.dart';

import '../../../../../common/widget/button/elevated_button.dart';
import '../../../../../utils/constant/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=onBoardingController.instance;
    return Positioned(
      bottom: MySizes.spaceBtwItems,
      left: 0,
      right: 0,
      child: MyElevatedButton(onPressed:controller.nextPage, child: Obx(()=> Text(controller.currentIndex.value==2?'Get Started':"Next"))),
    );
  }
}