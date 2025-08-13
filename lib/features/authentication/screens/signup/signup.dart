import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/style/padding.dart';
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
          padding:MyPadding.screenPadding,
          child: Column(
            children: [
              //Header
              Text(MyText.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: MySizes.spaceBtwSections,),
              //Form
              Column(
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
                      SizedBox(width: MySizes.spaceBtwInputFields,),
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
                  SizedBox(height: MySizes.spaceBtwInputFields,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: MyText.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  SizedBox(height: MySizes.spaceBtwInputFields,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: MyText.phoneNumber,
                      prefixIcon: Icon(Iconsax.call),
                    ),
                  ),
                  SizedBox(height: MySizes.spaceBtwInputFields,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: MyText.password,
                      prefixIcon: Icon(Iconsax.password_check),
                    ),
                  ),
                ],
              ),
              //Divider
              //Footer

            ],
          ),
        ),
      ),
    );
  }
}
