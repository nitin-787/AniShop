import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Screen height / height of the container
  // 732/220 = 3.3
  static double pageView = screenHeight / 2.2;
  static double pageViewContainer = screenHeight / 3.3;
  static double pageViewTextContainer = screenHeight / 6.1;

  // dynamic height padding and margin
  static double height10 = screenHeight / 73.2;
  static double height15 = screenHeight / 48.8;
  static double height20 = screenHeight / 36.6;
  static double height30 = screenHeight / 24.4;
  static double height45 = screenHeight / 16.26;

  // dynamic width padding and margin
  static double width10 = screenHeight / 73.2;
  static double width15 = screenHeight / 48.8;
  static double width20 = screenHeight / 36.6;
  static double width30 = screenHeight / 24.4;

  static double font20 = screenHeight / 36.6;

  // radius
  static double raduis15 = screenHeight / 48.8;
  static double raduis20 = screenHeight / 36.6;
  static double raduis30 = screenHeight / 24.4;

  // icon size
  static double iconSize24 = screenHeight / 30.5;

  // list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;
}
