import 'package:flutter/material.dart';
import 'package:myecommerce/utils/colors.dart';
import 'package:myecommerce/utils/dimensions.dart';
import 'package:myecommerce/widgets/app_column.dart';
import 'package:myecommerce/widgets/app_icon.dart';
import 'package:myecommerce/widgets/big_text.dart';
import 'package:myecommerce/widgets/expandable_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // backgorund image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food1.png"),
                ),
              ),
            ),
          ),

          // icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),

          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.raduis20),
                  topLeft: Radius.circular(Dimensions.raduis20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Appcolumn(text: "Paratha"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpadableTextWidget(
                          text:
                              "Gubergren amet est erat tempor invidunt sed elitr rebum, amet vero dolores takimata eos diam, et accusam no dolore elitr voluptua, vero at et lorem dolor ea diam voluptua. No dolores ut sanctus erat et, dolor sit voluptua tempor erat sit sit diam et, elitr amet eos stet erat rebum. Rebum est labore et dolores sed sanctus, no sed takimata et amet, ipsum sit eirmod erat ipsum dolor. Rebum dolore.Gubergren amet est erat tempor invidunt sed elitr rebum, amet vero dolores takimata eos diam, et accusam no dolore elitr voluptua, vero at et lorem dolor ea diam voluptua. No dolores ut sanctus erat et, dolor sit voluptua tempor erat sit sit diam et, elitr amet eos stet erat rebum. Rebum est labore et dolores sed sanctus, no sed takimata et amet, ipsum sit eirmod erat ipsum dolor. Rebum dolore. Gubergren amet est erat tempor invidunt sed elitr rebum, amet vero dolores takimata eos diam, et accusam no dolore elitr voluptua, vero at et lorem dolor ea diam voluptua. No dolores ut sanctus erat et, dolor sit voluptua tempor erat sit sit diam et, elitr amet eos stet erat rebum. Rebum est labore et dolores sed sanctus, no sed takimata et amet, ipsum sit eirmod erat ipsum dolor. Rebum dolore."),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height20,
          bottom: Dimensions.height15,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.raduis20 * 2),
            topRight: Radius.circular(Dimensions.raduis20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.raduis20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.raduis20),
                  color: AppColors.mainColor),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
