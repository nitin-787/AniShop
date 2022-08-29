import 'package:flutter/material.dart';
import 'package:myecommerce/utils/colors.dart';
import 'package:myecommerce/utils/dimensions.dart';
import 'package:myecommerce/widgets/app_icon.dart';
import 'package:myecommerce/widgets/big_text.dart';
import 'package:myecommerce/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.raduis20),
                    topRight: Radius.circular(Dimensions.raduis20),
                  ),
                ),
                child: Center(
                  child: BigText(size: Dimensions.font26, text: "Paratha"),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                child: const ExpadableTextWidget(
                  text:
                      "Gubergren amet est erat tempor invidunt sed elitr rebum, amet vero dolores takimata eos diam, et accusam no dolore elitr voluptua, vero at et lorem dolor ea diam voluptua. No dolores ut sanctus erat et, dolor sit voluptua tempor erat sit sit diam et, elitr amet eos stet erat rebum. Rebum est labore et dolores sed sanctus, no sed takimata et amet, ipsum sit eirmod erat ipsum dolor. Rebum dolore.Gubergren amet est erat tempor invidunt sed elitr rebum, amet vero dolores takimata eos diam, et accusam no dolore elitr voluptua, vero at et lorem dolor ea diam voluptua. No dolores ut sanctus erat et, dolor sit voluptua tempor erat sit sit diam et, elitr amet eos stet erat rebum. Rebum est labore et dolores sed sanctus, no sed takimata et amet, ipsum sit eirmod erat ipsum dolor. Rebum dolore. Gubergren amet est erat tempor invidunt sed elitr rebum, amet vero dolores takimata eos diam, et accusam no dolore elitr voluptua, vero at et lorem dolor ea diam voluptua. No dolores ut sanctus erat et, dolor sit voluptua tempor erat sit sit diam et, elitr amet eos stet erat rebum. Rebum est labore et dolores sed sanctus, no sed takimata et amet, ipsum sit eirmod erat ipsum dolor. Rebum dolore.",
                ),
              )
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  text: "\$12.88 " " X " " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
          )
        ],
      ),
    );
  }
}
