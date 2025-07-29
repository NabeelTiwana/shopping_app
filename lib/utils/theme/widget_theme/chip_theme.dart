import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/colors.dart';


class MyChipTheme{
  MyChipTheme._();

  static ChipThemeData lightChipTheme=ChipThemeData(
    disabledColor: MyColor.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: MyColor.black),
    selectedColor: MyColor.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: MyColor.white,
  );
  static ChipThemeData darkChipTheme= ChipThemeData(
    disabledColor: MyColor.darkerGrey,
    labelStyle: TextStyle(color: MyColor.white),
    selectedColor: MyColor.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: MyColor.white,
  );
}