import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../utils/app_colors.dart';

class CategoryPanel extends StatelessWidget {
  final CategoryModel category;

  const CategoryPanel({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: category.items.map((item) {
        return ListTile(
          leading: Text(item.emoji, style: const TextStyle(fontSize: 22)),
          title: Text(
            item.name,
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.itemText,
            ),
          ),
          dense: true,
        );
      }).toList(),
    );
  }
}