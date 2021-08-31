import 'package:eshop/config/theme.dart';
import 'package:eshop/models/models.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, this.product, this.widthFactory = 2.5}) : super(key: key);

  final Product product;
  final double widthFactory;

  @override
  Widget build(BuildContext context) {

    final double widthValue = MediaQuery.of(context).size.width / widthFactory;

    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 150,
          child: Image.network(
            Product.products[0].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(50),
            ),
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(50),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: textTheme().headline5.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\$${product.price}',
                        style: textTheme().headline6.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle,
                    ),
                    onPressed: () {  },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


