import 'package:flutter/material.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Title
        Text(
          MyText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: MySizes.sm),
        //subtitle
        Text(
          MyText.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}