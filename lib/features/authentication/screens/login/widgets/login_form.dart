import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/features/authentication/screens/forget_password/forget_password.dart';

import '../../../../../common/widget/button/elevated_button.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';
import '../../signup/signup.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: MyText.email,
          ),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields),
        //Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: MyText.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields / 2),
        //Remember Me & forgetPassword
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(MyText.rememberMe),
              ],
            ),
            //forgetPassword
            TextButton(onPressed: () =>Get.to(()=>ForgetPasswordScreen()), child: Text(MyText.forgetPassword)),
          ],
        ),
        SizedBox(height: MySizes.spaceBtwSections),
        //Sign in
        MyElevatedButton(onPressed: () {}, child: Text(MyText.signIn)),
        SizedBox(height: MySizes.spaceBtwItems / 2),
        //Create Account
        SizedBox(
          width: double.infinity,
            child: OutlinedButton(onPressed:()=>Get.to(()=>SignupScreen()), child: Text(MyText.createAccount))),
      ],
    );
  }
}