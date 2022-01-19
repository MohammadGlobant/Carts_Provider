import 'package:carts/screens/ProductsScreen.dart';
import 'package:carts/screens/ShoppingCartScreen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const products_screen = '/';
  static const shopping_cart_screen = "/shopping_cart_screen";

  AppRouter();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case products_screen:
        return MaterialPageRoute(builder: (context) => ProductsScreen(),);

      case shopping_cart_screen:
        return MaterialPageRoute(builder: (context) => ShoppingCartScreen());

    }
  }
}