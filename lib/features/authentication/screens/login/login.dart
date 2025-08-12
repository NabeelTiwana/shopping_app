import 'package:flutter/material.dart';
import 'package:shopping_app/common/style/padding.dart';
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
            //Form

            //divider
            //social button

          ],
        ),
      ),
    );
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Title
        Text(MyText.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: MySizes.sm,),
        //subtitle
        Text(MyText.loginSubTitle,style: Theme.of(context).textTheme.bodySmall,),
      ],
    );
  }
}
