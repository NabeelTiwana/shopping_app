import 'package:flutter/material.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/text.dart';

class MyPrivacyPolicyChackBox extends StatelessWidget {
  const MyPrivacyPolicyChackBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: MyText.iAgreeTo),
              TextSpan(
                text: MyText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                  color: dark?MyColor.white:MyColor.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:dark?MyColor.white: MyColor.primary,
                ),
              ),
              TextSpan(text: MyText.and),
              TextSpan(
                text: MyText.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                  color:dark?MyColor.white: MyColor.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:dark?MyColor.white: MyColor.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}