import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../utils/app_colors.dart';
import '../widgets/category_panel.dart';

class ExpansionMenuScreen extends StatefulWidget {
  const ExpansionMenuScreen({super.key});

  @override
  State<ExpansionMenuScreen> createState() => _ExpansionMenuScreenState();
}

class _ExpansionMenuScreenState extends State<ExpansionMenuScreen> {
  // Dữ liệu 3 danh mục
  final List<CategoryModel> _categories = [
    CategoryModel(
      title: 'Fruits',
      isExpanded: true, // mở sẵn như trong ảnh
      items: [
        CategoryItem(name: 'Apple', emoji: '🍎'),
        CategoryItem(name: 'Banana', emoji: '🍌'),
        CategoryItem(name: 'Orange', emoji: '🍊'),
      ],
    ),
    CategoryModel(
      title: 'Vegetables',
      items: [
        CategoryItem(name: 'Carrot', emoji: '🥕'),
        CategoryItem(name: 'Broccoli', emoji: '🥦'),
        CategoryItem(name: 'Tomato', emoji: '🍅'),
      ],
    ),
    CategoryModel(
      title: 'Drinks',
      items: [
        CategoryItem(name: 'Water', emoji: '💧'),
        CategoryItem(name: 'Juice', emoji: '🧃'),
        CategoryItem(name: 'Coffee', emoji: '☕'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: const Text(
          'Category Menu',
          style: TextStyle(
            color: AppColors.appBarText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 4),
            child: Text(
              'Expansion Menu',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.headerText,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Text(
              'Using ExpansionPanelList',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),

          // ExpansionPanelList
          Expanded(
            child: SingleChildScrollView(
              child: ExpansionPanelList(
                elevation: 1,
                expandedHeaderPadding: EdgeInsets.zero,
                dividerColor: AppColors.divider,
                expansionCallback: (index, isExpanded) {
                  setState(() {
                    _categories[index].isExpanded = isExpanded;
                  });
                },
                children: _categories.map((category) {
                  return ExpansionPanel(
                    backgroundColor: Colors.white,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        title: Text(
                          category.title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.headerText,
                          ),
                        ),
                      );
                    },
                    body: CategoryPanel(category: category),
                    isExpanded: category.isExpanded,
                  );
                }).toList(),
              ),
            ),
          ),

          // Footer
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14),
            color: AppColors.footerBg,
            child: const Center(
              child: Text(
                'StatefulWidget Management',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.footerText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}