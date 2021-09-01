import 'package:eshop/config/theme.dart';
import 'package:eshop/models/cart_model.dart';
import 'package:eshop/models/models.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart',),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 8.0,
                ),
                onPressed: () {  },
                child: Text(
                  'GO TO CHECKOUT',
                  style: textTheme().headline3,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${Cart().deliveryFeeString}',
              style: textTheme().headline5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(),
                elevation: 0,
              ),
              child: Text(
                'Add More Items',
                style: textTheme().headline5.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: Cart().products.length,
                itemBuilder: (context, index) {
                  return CartProductCard(product: Cart().products[index]);
                },
              ),
            ),
            Column(
              children: [
                Divider(thickness: 2,),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SUBTOTAL', style: textTheme().headline5,),
                          Text('\$${Cart().subtotalString}', style: textTheme().headline5,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'DELIVERY FREE',
                            style: textTheme().headline5,
                          ),
                          Text(
                            '\$${Cart().deliveryFeeString}',
                            style: textTheme().headline5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(50),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(5.0),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              'TOTAL',
                              style: textTheme().headline5.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '\$${Cart().totalString}',
                              style: textTheme().headline5.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
