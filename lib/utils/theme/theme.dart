import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/theme/widget_theme/appbar_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/bottomsheet_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/checkbox_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/chip_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/elevated_botton_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:shopping_app/utils/theme/widget_theme/text_field_theme.dart';
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
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme:MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme:MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme:MyOutlinedButtonTheme.lightOutlinedButtonTeme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.dark,
    primaryColor: MyColor.primary,
    disabledColor: MyColor.grey,
    textTheme: MyTextTheme.darkTextTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    scaffoldBackgroundColor: MyColor.black,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme:MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}