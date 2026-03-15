import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../utils/app_colors.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel article;

  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardBg,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ảnh tiêu đề
          Image.network(
            article.imageUrl,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              width: double.infinity,
              height: 180,
              color: Colors.grey.shade200,
              child: const Icon(Icons.image, size: 60, color: Colors.grey),
            ),
          ),

          // Tiêu đề + Mô tả
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleText,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  article.description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.descText,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}