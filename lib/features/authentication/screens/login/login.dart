import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/constant/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Header
          Column(
            children: [
              //Title
              Text(MyText.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: MySizes.defaultSpace,),
              Text(MyText.loginSubTitle,style: Theme.of(context).textTheme.bodySmall,),
            ],
          ),
          //Form
          //divider
          //social button

        ],
      ),
    );
  }
}
