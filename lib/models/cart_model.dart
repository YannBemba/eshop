import 'package:equatable/equatable.dart';
import 'package:eshop/models/models.dart';

class Cart extends Equatable {

  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFree(subtotal) {
    if(subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  double total(subtotal, deliveryFree) {
    return subtotal + deliveryFree(subtotal);
  }
  
  String get totalString => total(subtotal, deliveryFree).toString();

  String get subtotalString => subtotal.toStringAsFixed(2);

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return "You have Free Delivery";
    } else {
      double missing = 30.0 - subtotal;

      return 'Add \$${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }

  String get deliveryFeeString => deliveryFree(subtotal).toStringAsFixed(2);

  List<Product> products = [
    Product(
      name: 'Soft Drink #1',
      category: 'Soft Drinks',
      imageUrl: '',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #2',
      category: 'Soft Drinks',
      imageUrl: '',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Drinky #3',
      category: 'Soft Drinks',
      imageUrl: '',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
  ];

  @override
  List<Object> get props => [];

}