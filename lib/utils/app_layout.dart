import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double screenHeight = getScreenHeight();
    return screenHeight / (screenHeight / pixels);
  }
  static getWidth(double pixels) {
    double screenWidth = getScreenWidth();
    return screenWidth / (screenWidth / pixels);
  }
}
