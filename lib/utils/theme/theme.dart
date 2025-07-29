import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/theme/widget_theme/appbar_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/chip_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/text_theme.dart';

class MyAppTheme{
  MyAppTheme._();

  static ThemeData lightTheme=ThemeData(
   useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.light,
    primaryColor: MyColor.primary,
    disabledColor: MyColor.grey,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme:MyChipTheme.lightChipTheme,
    scaffoldBackgroundColor: MyColor.white,
    appBarTheme:MyAppBarTheme.lightAppBarTheme,
  );
  static ThemeData darkTheme=ThemeData();
}