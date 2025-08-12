import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';

class MySocialButton extends StatelessWidget {
  const MySocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(MyImages.googleIcon,(){}),
        SizedBox(width: MySizes.spaceBtwItems,),
        buildButton(MyImages.facebookIcon,(){}),
      ],
    );
  }

  Container buildButton(String image,VoidCallback onPressed) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyColor.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            image,
            height: MySizes.iconMd,
            width: MySizes.iconMd,
          ),
        ),
      );
  }
}