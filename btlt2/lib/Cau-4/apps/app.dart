import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../views/product_grid_screen.dart';

class Cau4App extends StatelessWidget {
  const Cau4App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = [
      ProductModel(
        name: 'Giày Chạy Bộ Nam',
        price: 950000,
        rating: 4.5,
        imageUrl: 'https://cdn.hstatic.net/products/1000288768/1_9793ad84a4ec47aca26a44d8310884ec_master.png',
      ),
      ProductModel(
        name: 'Áo Thun Tập Luyện',
        price: 320000,
        rating: 4.5,
        imageUrl: 'https://cdn.hstatic.net/products/1000288768/artboard_6_48d7665911e7486b900a93a3092a3c39_master.png',
      ),
      ProductModel(
        name: 'Bóng Đá Thể Thao',
        price: 510000,
        rating: 4.5,
        imageUrl: 'https://product.hstatic.net/1000288768/product/4_d1ae53290c5f49cfa571b8dbd29594a4_master.png',
      ),
      ProductModel(
        name: 'Túi Thể Thao',
        price: 415000,
        rating: 4.5,
        imageUrl: 'https://product.hstatic.net/1000288768/product/2_a0510b00ca834e049084adc66b2aa1db_master.jpg',
      ),
      ProductModel(
        name: 'Mũ Lưỡi Trai',
        price: 185000,
        rating: 4.5,
        imageUrl: 'https://product.hstatic.net/1000288768/product/15__4__bf5be00923c34212b48102e8a99bae5d_master.jpg',
      ),
      ProductModel(
        name: 'Vớ Thể Thao Cao Cấp',
        price: 95000,
        rating: 4.5,
        imageUrl: 'https://product.hstatic.net/1000288768/product/2_afa27358f4f64f9d9c841b661f177f69_master.png',
      ),
    ];

    return MaterialApp(
      title: 'Cửa Hàng Thể Thao',
      debugShowCheckedModeBanner: false,
      home: ProductGridScreen(products: products),
    );
  }
}