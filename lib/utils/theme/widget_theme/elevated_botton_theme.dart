import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../constant/colors.dart';

class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColor.light,
      backgroundColor: MyColor.primary,
      disabledForegroundColor: MyColor.darkerGrey,
      disabledBackgroundColor: MyColor.buttonDisabled,
      side: const BorderSide(color: MyColor.light),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16.0,
        color: MyColor.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
    ),
  );
  static final darkElevatedButtonTheme=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColor.light,
      backgroundColor: MyColor.primary,
      disabledBackgroundColor: MyColor.darkerGrey,
      disabledForegroundColor: MyColor.darkerGrey,
      side:  BorderSide(color: MyColor.primary),
      padding:const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16.0,color: MyColor.textWhite,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySizes.buttonRadius)),
    ),
  );
}
