import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/helpers/device_helper.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subTitle,
  });

  final String animation;
  final String title;
  final String subTitle;

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
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subTitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
