import 'package:flutter/material.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';
import 'package:shopping_app/utils/helpers/device_helper.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subtitle, required this.image, required this.onTap});
final String title,subtitle,image;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Padding(padding: MyPadding.screenPadding,child: Column(
          children: [
            //Image
            Image.asset(image,height: MyDeviceHelper.getScreenWidth(context)*0.8,),
            SizedBox(height: MySizes.spaceBtwItems,),
            //Title
            Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            SizedBox(height: MySizes.spaceBtwItems,),
            //SubTitle
            Text(subtitle,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
            SizedBox(height: MySizes.spaceBtwSections,),
            //Continue
            MyElevatedButton(onPressed: onTap, child: Text(MyText.mContinue)),
          ],
        ),),
      ),
    );
  }
}
