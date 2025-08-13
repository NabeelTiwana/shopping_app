import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/features/authentication/screens/forget_password/reset_password.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
              //Title
              Text(MyText.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: MySizes.spaceBtwItems/2,),
              //SUbTitle
              Text(MyText.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
              SizedBox(height: MySizes.spaceBtwSections*2.5,),
              //Form
              TextFormField(
                decoration: InputDecoration(
                  labelText: MyText.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwItems,),
              //
              MyElevatedButton(onPressed: ()=>Get.to(()=>ResetPasswordScreen()), child: Text(MyText.submit)),
            ],
          ),
        ),
      ),
    );
  }
}
