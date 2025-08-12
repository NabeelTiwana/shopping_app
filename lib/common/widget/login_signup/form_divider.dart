import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

import '../../../utils/constant/colors.dart';

class MyFormDivider extends StatelessWidget {
  const MyFormDivider({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          child: Divider(indent: 60, endIndent: 5, thickness: 0.5,color: dark?MyColor.darkGrey:MyColor.grey,),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
          child: Divider(indent: 5, endIndent: 60, thickness: 0.5,color: dark?MyColor.darkGrey:MyColor.grey,),
        ),
      ],
    );
  }
}