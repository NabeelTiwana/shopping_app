import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/style/padding.dart';
import 'package:shopping_app/common/widget/button/elevated_button.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: MyPadding.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            //Title& subTitle
            LoginHeader(),
            SizedBox(height: MySizes.spaceBtwSections),
            //Form
            LoginForm(),
            SizedBox(height: MySizes.spaceBtwSections),
            //divider
           Row(
             children: [
               Expanded(child: Divider(indent: 60,endIndent: 5,thickness: 0.5,)),
               Text(MyText.orSignInWith,style: Theme.of(context).textTheme.labelMedium,),
               Expanded(child: Divider(indent: 5,endIndent: 60,thickness: 0.5,)),
             ],
           ),
            SizedBox(height:MySizes.spaceBtwSections ,),
            //Footer
            //social button
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColor.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(onPressed: (){}, icon: ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

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
        SizedBox(height: MySizes.spaceBtwInputFields/2,),
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
            TextButton(onPressed: (){}, child: Text(MyText.forgetPassword)),
          ],
        ),
        SizedBox(height: MySizes.spaceBtwSections,),
        //Sign in
        MyElevatedButton(onPressed: (){}, child: Text(MyText.signIn)),
         SizedBox(height: MySizes.spaceBtwItems/2,),
        //Create Account
        MyElevatedButton(onPressed: (){}, child: Text(MyText.createAccount)),
      ],
    );
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Title
        Text(
          MyText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: MySizes.sm),
        //subtitle
        Text(
          MyText.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
