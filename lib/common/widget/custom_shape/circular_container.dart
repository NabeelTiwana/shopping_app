import 'package:flutter/cupertino.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/helpers/device_helper.dart';

class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer({
    super.key,
     this.height=400,
     this.width=400,
     this.radius=400,
     this.backgroundColor=MyColor.white,
    this.padding,
    this.margin,
  });

  final double height, width, radius;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color:backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
