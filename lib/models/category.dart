import 'package:flutter/material.dart';
import 'package:indian_food/dummy_data.dart';
import 'package:indian_food/models/meals.dart';

class Category {
  final String id;
  final String title;
  final String imageUrl;

  const Category({@required this.id, @required this.title, this.imageUrl});
}
