import 'package:equatable/equatable.dart';
import 'package:eshop/models/models.dart';

class Wishlist extends Equatable {

  final List<Product> products;

  Wishlist({this.products = const <Product>[]});

  @override
  List<Object> get props => throw UnimplementedError();



}