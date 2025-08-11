import 'package:flutter/material.dart';

import '../../../../../utils/helpers/device_helper.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MyDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(onPressed: (){}, child: Text("skip")));
  }
}
