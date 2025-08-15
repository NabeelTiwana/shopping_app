import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/custom_shape/circular_container.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/helpers/device_helper.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.primary,
      height: MyDeviceHelper.getScreenHeight(context)*0.4,
      child: Stack(
        children: [
          Positioned(
            top: -150,
            right: -160,
            child: MyCircularContainer(
              height: MyDeviceHelper.getScreenHeight(context)*0.4,
              width: MyDeviceHelper.getScreenHeight(context)*0.4,
              backgroundColor: MyColor.white.withValues(alpha: 0.1),
            ),
          ),
          Positioned(
            top: 50,
            right: -250,
            child: MyCircularContainer(
              height: MyDeviceHelper.getScreenHeight(context)*0.4,
              width: MyDeviceHelper.getScreenHeight(context)*0.4,
              backgroundColor: MyColor.white.withValues(alpha: 0.1),
            ),
          ),
        ],
      ),
    );
  }
}