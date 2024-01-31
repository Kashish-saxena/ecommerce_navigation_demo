import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:ecommerce_navigation_demo/screens/detail_view.dart';
import 'package:ecommerce_navigation_demo/screens/home_screen.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.detailView:
        Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => DetailViewScreen(arguments: data),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Page does not exist..."),
            ),
          ),
        );
    }
  }
}
