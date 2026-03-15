import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../views/food_list_screen.dart';

class Cau2App extends StatelessWidget {
  const Cau2App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FoodItem> foods = [
      FoodItem(
        name: 'Phở Bò',
        description: 'Phở Bò Đặc Biệt',
        price: 65,
        imageUrl:
            'https://vietnamtoplist.com.vn/wp-content/uploads/2025/01/Hinh-anh-mon-an-Pho-Bo.jpg',
      ),
      FoodItem(
        name: 'Bún Chả',
        description: 'Bún Chả Hà Nội',
        price: 55,
        imageUrl:
            'https://vietnamtoplist.com.vn/wp-content/uploads/2025/01/Hinh-anh-mon-an-Viet-Nam25-1.jpg',
      ),
      FoodItem(
        name: 'Cơm Tấm',
        description: 'Cơm Tấm Sườn Bì Chả Trứng',
        price: 50,
        imageUrl:
            'https://vietnamtoplist.com.vn/wp-content/uploads/2025/01/Hinh-anh-mon-an-Viet-Nam4-1.jpg',
      ),
      FoodItem(
        name: 'Bánh Mì',
        description: 'Bánh Mì Chả Lụa',
        price: 35,
        imageUrl:
            'https://vietnamtoplist.com.vn/wp-content/uploads/2025/01/Hinh-anh-mon-an-Viet-Nam1-1.jpg',
      ),
      FoodItem(
        name: 'Gỏi Cuốn',
        description: 'Gỏi Cuốn Tôm Thịt',
        price: 40,
        imageUrl:
            'https://vietnamtoplist.com.vn/wp-content/uploads/2025/01/Hinh-anh-mon-Goi-Cuon.jpg',
      ),
    ];

    return MaterialApp(
      title: 'Danh Sách Món Ăn',
      debugShowCheckedModeBanner: false,
      home: FoodListScreen(foods: foods),
    );
  }
}