import 'package:eshop/config/theme.dart';
import 'package:eshop/models/models.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, this.product, this.widthFactory = 2.5, this.leftPosition = 5, this.isWishlist}) : super(key: key);

  final Product product;
  final double widthFactory;
  final double leftPosition;
  final bool isWishlist;

  @override
  Widget build(BuildContext context) {

    final double widthValue = MediaQuery.of(context).size.width / widthFactory;

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
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
            left: leftPosition,
            child: Container(
              width: widthValue - 10 - leftPosition,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: leftPosition + 5,
            child: Container(
              width: widthValue - 15 - leftPosition,
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
                  isWishlist ?
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.delete,
                      ),
                      color: Colors.white,
                      onPressed: () {  },
                    ),
                  ) : SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


