
import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/button/elevated_button.dart';
import '../../../../../utils/constant/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MySizes.spaceBtwItems,
      left: 0,
      right: 0,
      child: MyElevatedButton(child: Text("Next"), onPressed: () {}),
    );
  }
}