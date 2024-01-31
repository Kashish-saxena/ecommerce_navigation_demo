import 'package:ecommerce_navigation_demo/models/brands.dart';
import 'package:ecommerce_navigation_demo/models/product_details.dart';
import 'package:ecommerce_navigation_demo/routing/routes.dart';
import 'package:ecommerce_navigation_demo/screens/detail_view.dart';
import 'package:ecommerce_navigation_demo/utils/color_constants.dart';
import 'package:ecommerce_navigation_demo/utils/string_constants.dart';
import 'package:ecommerce_navigation_demo/utils/text_styles.dart';
import 'package:ecommerce_navigation_demo/widgets/common_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 55, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuButtonWidget(image: "assets/images/menu.svg"),
                  MenuButtonWidget(image: "assets/images/Bag.svg"),
                ],
              ),
              Text(
                StringConstants.hello,
                style:
                    TextStyles.textStyleFont17Weight600.copyWith(fontSize: 28),
              ),
              Text(
                StringConstants.welcome,
                style:
                    TextStyles.textStyleFont15Weight400.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.greyF5F6FA,
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: StringConstants.search,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstants.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.keyboard_voice_outlined,
                      color: ColorConstants.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstants.choose,
                    style: TextStyles.textStyleFont15Weight500
                        .copyWith(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      StringConstants.view,
                      style: TextStyles.textStyleFont15Weight400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: brands.length,
                  itemBuilder: (context, index) {
                    Brands brand = brands[index];
                    return Container(
                      height: 150,
                      width: 110,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.greyF5F6FA,
                      ),
                      child: ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.all(0),
                        leading: SvgPicture.asset(brand.image),
                        title: Text(
                          brand.name,
                          textAlign: TextAlign.center,
                          style: TextStyles.textStyleFont15Weight500,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstants.arrivals,
                    style: TextStyles.textStyleFont15Weight500
                        .copyWith(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      StringConstants.view,
                      style: TextStyles.textStyleFont15Weight400,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: productDetails.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  ProductDetails details = productDetails[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.detailView,
                        arguments: {
                          'subtitle': details.subtitle,
                          'title': details.title,
                          'price': details.price,
                          'description': details.description,
                        },
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: ColorConstants.greyF5F6FA,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              details.image,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(details.title),
                        Text(
                          details.price,
                          style: TextStyles.textStyleFont17Weight600
                              .copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorConstants.greyF5F6FA,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: ColorConstants.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: ColorConstants.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: ColorConstants.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_rounded,
              color: ColorConstants.grey,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
