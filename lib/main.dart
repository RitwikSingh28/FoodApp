import 'package:flutter/material.dart';
import 'screens/product_list.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Food Basket',
      debugShowCheckedModeBanner: false,
      home: ProductList(),
    ),
  );
}
