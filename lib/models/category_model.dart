import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable {

  final String name;
  final String imageUrl;

  const Category({
    @required this.name,
    @required this.imageUrl,
  });

  @override
  List<Object> get props => throw UnimplementedError();

  static List<Category> categories = [
    Category(
      name: 'Soft Drink',
      imageUrl:
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    ),
    Category(
      name: 'Smoothies',
      imageUrl:
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    ),
    Category(
      name: 'Water',
      imageUrl:
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    ),
  ];

}