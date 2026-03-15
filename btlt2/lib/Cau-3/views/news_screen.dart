import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../utils/app_colors.dart';
import '../widgets/article_card.dart';

class NewsScreen extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsScreen({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: const Text(
          'News',
          style: TextStyle(
            color: AppColors.appBarText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: articles
              .map((article) => ArticleCard(article: article))
              .toList(),
        ),
      ),
    );
  }
}