import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/helpers/device_helper.dart';

import '../../../../common/widget/custom_shape/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPrimaryHeaderContainer(),
    );
  }
}




