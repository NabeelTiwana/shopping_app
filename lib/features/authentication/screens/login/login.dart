import 'package:flutter/material.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';

import '../../../../common/widget/button/social_button.dart';
import '../../../../common/widget/login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
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
      ),
    );
  }
}








