import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Screen height / height of the container
  // 732/220 = 3.3
  static double pageView = screenHeight / 2.2;
  static double pageViewContainer = screenHeight / 3.3;
  static double pageViewTextContainer = screenHeight / 6.1;

  // 732 / 10 = 73.2
  static double height10 = screenHeight / 73.2;
  static double height15 = screenHeight / 48.8;
  static double height20 = screenHeight / 36.6;

  static double font20 = screenHeight / 36.6;
}
