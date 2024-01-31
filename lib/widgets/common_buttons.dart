import 'package:ecommerce_navigation_demo/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButtonWidget extends StatelessWidget {
  const MenuButtonWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(10),
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color:ColorConstants.greyF5F6FA,
        
    
       ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
