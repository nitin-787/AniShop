import 'package:flutter/material.dart';
import 'package:myecommerce/home/food_page_body.dart';
import 'package:myecommerce/utils/colors.dart';
import 'package:myecommerce/utils/dimensions.dart';
import 'package:myecommerce/widgets/big_text.dart';
import 'package:myecommerce/widgets/small_text.dart';

class MyFoodPage extends StatefulWidget {
  const MyFoodPage({Key? key}) : super(key: key);

  @override
  State<MyFoodPage> createState() => _MyFoodPageState();
}

class _MyFoodPageState extends State<MyFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("Current size is ${MediaQuery.of(context).size.height}");
    return Scaffold(
      body: Column(
        children: [
          // Showing the head
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "India",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Solan",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.raduis15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // showing the body
          const FoodPageBody()
        ],
      ),
    );
  }
}
