import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/tile.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key}) : super(key: key); // Removed 'const' here

  final List<Product> products = [
    Product(
      title: 'Air Conditioner Model 1',
      description: 'Energy-efficient air conditioner with remote control.',
      price: 399.99,
      imageUrl: 'assets/images/ac4.png',
    ),
    Product(
      title: 'Air Conditioner Model 2',
      description: 'High-performance AC with quick cooling technology.',
      price: 499.99,
      imageUrl: 'assets/images/ac3.png',
    ),
    Product(
      title: 'Air Conditioner Model 3',
      description: 'Silent air conditioner with smart Wi-Fi capabilities.',
      price: 599.99,
      imageUrl: 'assets/images/ac2.png',
    ),
    Product(
      title: 'Air Conditioner Model 4',
      description: 'Compact AC with eco-friendly refrigerant.',
      price: 299.99,
      imageUrl: 'assets/images/ac.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Air Conditioner Product List'),
        backgroundColor: Colors.orange.shade700,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
