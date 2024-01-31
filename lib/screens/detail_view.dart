import 'package:ecommerce_navigation_demo/utils/string_constants.dart';
import 'package:ecommerce_navigation_demo/utils/text_styles.dart';
import 'package:ecommerce_navigation_demo/widgets/common_buttons.dart';
import 'package:ecommerce_navigation_demo/widgets/sizes.dart';
import 'package:flutter/material.dart';

class DetailViewScreen extends StatelessWidget {
  const DetailViewScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);
  final Map<String, dynamic> arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/profile.png"),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButtonWidget(image: "assets/images/Arrow - Left.svg"),
                      MenuButtonWidget(image: "assets/images/Bag.svg"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        arguments['subtitle'],
                        style: TextStyles.textStyleFont15Weight400,
                      ),
                      const Text(
                        "Price",
                        style: TextStyles.textStyleFont15Weight400,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(arguments['title'],
                          style: TextStyles.textStyleFont17Weight600),
                      Text(arguments['price'],
                          style: TextStyles.textStyleFont17Weight600),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/img1.png"),
                      Image.asset("assets/images/img2.png"),
                      Image.asset("assets/images/img3.png"),
                      Image.asset("assets/images/img4.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size",
                        style: TextStyles.textStyleFont17Weight600,
                      ),
                      Text("Size Chart"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizeWidget(text: "S"),
                      SizeWidget(text: "M"),
                      SizeWidget(text: "L"),
                      SizeWidget(text: "XL"),
                      SizeWidget(text: "2XL"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Description",
                    style: TextStyles.textStyleFont17Weight600,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    arguments['description'],
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringConstants.review,
                        style: TextStyles.textStyleFont17Weight600,
                      ),
                      Text(StringConstants.view),
                    ],
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/review.png"),
                    title: const Text("Ronalds Richards"),
                    subtitle: const Row(
                      children: [
                        Icon(Icons.alarm_outlined),
                        Text("31 January, 2024")
                      ],
                    ),
                    trailing: const Text(
                      "4.8",
                      style: TextStyles.textStyleFont17Weight600,
                    ),
                  ),
                  Text(arguments['description'],
                      style: const TextStyle(color: Colors.grey)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        StringConstants.total,
                        style: TextStyles.textStyleFont17Weight600,
                      ),
                      Text(arguments['price']),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
