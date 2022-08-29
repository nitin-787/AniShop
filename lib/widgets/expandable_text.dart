import 'package:flutter/material.dart';
import 'package:myecommerce/utils/colors.dart';
import 'package:myecommerce/utils/dimensions.dart';
import 'package:myecommerce/widgets/small_text.dart';

class ExpadableTextWidget extends StatefulWidget {
  final String text;
  const ExpadableTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ExpadableTextWidget> createState() => ExpadableTextWidgetState();
}

class ExpadableTextWidgetState extends State<ExpadableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 4.88;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                  height: 1.5,
                  color: AppColors.paraColor,
                  size: Dimensions.font16,
                  text:
                      hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        size: Dimensions.font16,
                        text: hiddenText ? "show more" : "show less",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
