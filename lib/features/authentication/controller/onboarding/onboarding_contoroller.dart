import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class onBoardingController extends GetxController {

  static onBoardingController get instance => Get.find();

  //variable
  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  //update page whin page scrolling
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  //jump to specific dot selected page
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update current index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  //Update current index and jump to the last page
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }


}