import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/features/authentication/screens/login/login.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';
import 'package:shopping_app/utils/helpers/device_helper.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: MyPadding.screenPadding,
          child: Column(
            children: [
              //Image
              Image.asset(MyImages.mailSentImage,height: MyDeviceHelper.getScreenWidth(context)*0.8,),
              SizedBox(height: MySizes.spaceBtwItems,),
              //title
              Text(MyText.resetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: MySizes.spaceBtwItems,),
              //Email
              Text("nabeeldeveloper122@gamil.com",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(height: MySizes.spaceBtwItems,),
              //SubTitle
              Text(MyText.resetPasswordSubTitle,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
              SizedBox(height: MySizes.spaceBtwSections,),
              //Done
              MyElevatedButton(onPressed: (){}, child: Text(MyText.done)),
              //Resend email
              SizedBox(
                width: double.infinity,
                  child: TextButton(onPressed: (){}, child: Text(MyText.resendEmail)))
            ],
          ),
        ),
      ),
    );
  }
}
