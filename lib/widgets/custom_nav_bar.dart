import 'package:eshop/blocs/wishlist/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black.withOpacity(0.6),
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home_filled, color: Colors.white,),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            BlocBuilder<WishlistBloc, WishlistState>(
              builder: (context, state) {
                return IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white,),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined, color: Colors.white,),
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
            ),
          ],
        ),
      ),
    );
  }
}
