import 'package:eshop/models/models.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: ProductCard(
              product: Product.products[index]
            ),
          );
        },
      ),
    );
  }
}
