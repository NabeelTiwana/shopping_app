import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

import '../../../../common/widget/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: MyPadding.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            //Title& subTitle
            MyLoginHeader(),
            SizedBox(height: MySizes.spaceBtwSections),
            //Form
            MyLoginForm(),
            SizedBox(height: MySizes.spaceBtwSections),
            //divider
            MyFormDivider(title: MyText.orSignInWith,),
            SizedBox(height: MySizes.spaceBtwSections),
            //Footer
            //social button
            MySocialButton(),
          ],
        ),
      ),
    );
  }
}

class MySocialButton extends StatelessWidget {
  const MySocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              MyImages.googleIcon,
              height: MySizes.iconMd,
              width: MySizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: MySizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColor.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              MyImages.facebookIcon,
              height: MySizes.iconMd,
              width: MySizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}






