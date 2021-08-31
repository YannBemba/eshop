import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
