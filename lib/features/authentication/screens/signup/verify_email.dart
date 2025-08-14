import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/common/widget/screen/success_screen.dart';
import 'package:shopping_app/utils/constant/images.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';
import 'package:shopping_app/utils/helpers/device_helper.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: MyPadding.screenPadding,
          child: Column(
            children: [
              //Image
              Image.asset(
                MyImages.mailSentImage,
                height: MyDeviceHelper.getScreenWidth(context) * 0.8,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              //title
              Text(
                MyText.verifyEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              //Email
              Text(
                "nabeeldeveloper122@gamil.com",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              //SubTitle
              Text(
                MyText.verifyEmailSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              //Continue
              MyElevatedButton(
                onPressed: () => Get.to(
                  () => SuccessScreen(
                    title: MyText.accountCreatedTitle,
                    subtitle: MyText.accountCreatedSubTitle,
                    image: MyImages.accountCreatedImage,
                    onTap: () {},
                  ),
                ),
                child: Text(MyText.mContinue),
              ),
              //Resend email
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(MyText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
