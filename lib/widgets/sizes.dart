import 'package:ecommerce_navigation_demo/utils/color_constants.dart';
import 'package:ecommerce_navigation_demo/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: ColorConstants.greyF5F6FA,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyles.textStyleFont17Weight600,
      ),
    );
  }
}
