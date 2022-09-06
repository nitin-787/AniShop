import 'package:get/get.dart';
import 'package:myecommerce/controller/popular_product_controller.dart';
import 'package:myecommerce/data/api/api_client.dart';
import 'package:myecommerce/data/repository/popular_product_repo.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "something.com"));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // repos
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
