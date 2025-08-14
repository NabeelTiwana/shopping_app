import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/common/widget/button/social_button.dart';
import 'package:shopping_app/common/widget/login_signup/form_divider.dart';
import 'package:shopping_app/features/authentication/screens/signup/verify_email.dart';
import 'package:shopping_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: MyPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header
              Text(
                MyText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              //Form
              MySignupForm(),
              SizedBox(height: MySizes.spaceBtwItems,),
              MyElevatedButton(onPressed: ()=>Get.to(()=>VerifyEmailScreen()), child: Text(MyText.createAccount),),
              SizedBox(height: MySizes.spaceBtwSections,),
              //Divider
              MyFormDivider(title: MyText.orSignupWith),
              //Footer
              SizedBox(height: MySizes.spaceBtwSections,),
              MySocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


