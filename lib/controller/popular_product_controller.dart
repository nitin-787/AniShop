import 'package:get/get.dart';
import 'package:myecommerce/data/repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProdeuctRepo popularProdeuctRepo;

  PopularProductController({required this.popularProdeuctRepo});

  List<dynamic> _popularProductList = [];

  Future<void> getPopularProductList() async {
    Response response = await popularProdeuctRepo.getPopularProductList();
  }
}
