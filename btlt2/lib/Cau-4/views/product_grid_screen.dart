import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_grid_tile.dart';

class ProductGridScreen extends StatelessWidget {
  final List<ProductModel> products;

  const ProductGridScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Cửa Hàng Thể Thao',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
          children: products
              .map((p) => ProductGridTile(product: p))
              .toList(),
        ),
      ),
    );
  }
}