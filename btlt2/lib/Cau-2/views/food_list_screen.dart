import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../utils/app_colors.dart';
import '../widgets/food_card.dart';

class FoodListScreen extends StatelessWidget {
  final List<FoodItem> foods;

  const FoodListScreen({super.key, required this.foods});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: const Text(
          'DANH SÁCH MÓN ĂN',
          style: TextStyle(
            color: AppColors.appBarText,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.background,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodCard(food: foods[index]);
        },
      ),
    );
  }
}