import 'package:eshop/blocs/wishlist/wishlist_bloc.dart';
import 'package:eshop/models/models.dart';
import 'package:eshop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {

          if(state is WishlistLoading) {
            Center(
              child: CircularProgressIndicator(),
            );
          }

          if(state is WishlistLoaded) {
            return GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.15,
              ),
              itemCount: state.wishlist.products.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.center,
                  child: ProductCard(
                    product: state.wishlist.products[index],
                    widthFactory: 1.1,
                    leftPosition: 100,
                  ),
                );
              },
            );
          } else {
            return Text('Something wrong here');
          }

        },
      ),
    );
  }
}



