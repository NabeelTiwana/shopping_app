import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/custom_shape/circular_container.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/helpers/device_helper.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomRoundedEdge(),
      child: Container(
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
            //child
            child
          ],
        ),
      ),
    );
  }
}
class MyCustomRoundedEdge extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   Path path=Path();
   //Top to bottom line
   path.lineTo(0, size.height-40);
   //First Curve
   Offset firstPointCurve1=Offset(40, size.height);
   Offset secondPointCurve1=Offset(size.width/2,size.height );
   path.quadraticBezierTo(firstPointCurve1.dx, firstPointCurve1.dy, secondPointCurve1.dx, secondPointCurve1.dy);

   //Second Curve
   Offset firstPointCurve2=Offset(size.width-40, size.height);
   Offset secondPointCurve2=Offset(size.width,size.height-40);
   path.quadraticBezierTo(firstPointCurve2.dx, firstPointCurve2.dy, secondPointCurve2.dx, secondPointCurve2.dy);

   //bottom to top line
   path.lineTo(size.width, 0);
   return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}