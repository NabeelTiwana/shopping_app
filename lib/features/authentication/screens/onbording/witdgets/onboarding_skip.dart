import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shopping_app/features/authentication/controller/onboarding/onboarding_contoroller.dart';

import '../../../../../utils/helpers/device_helper.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=onBoardingController.instance;
    return Obx(()=>controller.currentIndex.value==2?SizedBox():
       Positioned(
          top: MyDeviceHelper.getAppBarHeight(),
          right: 0,
          child: TextButton(onPressed: controller.skipPage, child: Text("skip"))),
    );
  }
}
