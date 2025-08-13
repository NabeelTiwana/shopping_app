import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: MyText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: MySizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: MyText.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MySizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            labelText: MyText.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            labelText: MyText.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            labelText: MyText.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields / 2),
        //CheckBox
        Row(
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
                      color: MyColor.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: MyColor.primary,
                    ),
                  ),
                  TextSpan(text: MyText.and),
                  TextSpan(
                    text: MyText.termOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!
                        .copyWith(
                      color: MyColor.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: MyColor.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}