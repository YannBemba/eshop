import 'package:eshop/models/category_model.dart';
import 'package:eshop/models/models.dart';
import 'package:eshop/widgets/custom_appbar.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key key, this.category}) : super(key: key);

  final Category category;

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {

    final List<Product> categoryProducts = Product.products.where(
          (product) => product.category == category.name,
    ).toList();

    return Scaffold(
      appBar: CustomAppBar(title: 'Catalog',),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 16.0,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.center,
            child: ProductCard(
              product: categoryProducts[index],
              widthFactory: 2.2,
            ),
          );
        },
      ),
    );
  }
}
