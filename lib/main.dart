import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Food Basket',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Items'),
      ),
      body: Container(),
    );
  }
}
