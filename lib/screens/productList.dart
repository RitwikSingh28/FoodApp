import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;
import 'package:food_app_provider/api/food_items.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
        actions: const [
          InkWell(
            child: badge.Badge(
              badgeContent: Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Center(child: Icon(Icons.shopping_cart)),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products['productName']?.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(index.toString()),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
