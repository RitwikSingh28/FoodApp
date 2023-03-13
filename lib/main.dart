import 'package:flutter/material.dart';
import './screens/productList.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Food Basket',
      home: ProductList(),
    ),
  );
}
