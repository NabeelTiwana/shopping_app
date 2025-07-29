import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

class MyCheckboxTheme {
  MyCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(MySizes.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return MyColor.white;
      } else {
        return MyColor.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return MyColor.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(MySizes.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return MyColor.white;
      } else {
        return MyColor.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return MyColor.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
