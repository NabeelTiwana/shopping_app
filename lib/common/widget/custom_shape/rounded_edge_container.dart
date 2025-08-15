import 'package:flutter/cupertino.dart';
import 'package:shopping_app/common/widget/custom_shape/clipper/custom_rounded_container.dart';

class MyRoundedEdgesContainer extends StatelessWidget {
  const MyRoundedEdgesContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomRoundedEdge(),
      child: child,
    );
  }
}
