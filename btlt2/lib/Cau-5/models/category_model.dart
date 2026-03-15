class CategoryItem {
  final String name;
  final String emoji;

  CategoryItem({required this.name, required this.emoji});
}

class CategoryModel {
  final String title;
  final List<CategoryItem> items;
  bool isExpanded;

  CategoryModel({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });
}