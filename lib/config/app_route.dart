import 'package:eshop/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {

    switch(settings.name) {
      case '/':
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case CatalogScreen.routeName:
        return CatalogScreen.route();

      case WishlistScreen.routeName:
        return WishlistScreen.route();

      case ProductScreen.routeName:
        return ProductScreen.route();

      default:
        return _errorRoute();

    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(
        name: '/error',
      ),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Error',
            style: GoogleFonts.playfairDisplay(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }



}