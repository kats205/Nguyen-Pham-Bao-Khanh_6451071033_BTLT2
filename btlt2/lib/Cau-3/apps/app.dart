import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../views/news_screen.dart';

class Cau3App extends StatelessWidget {
  const Cau3App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ArticleModel> articles = [
      ArticleModel(
        title: 'Article Title 1: Flutter is awesome!',
        description:
            'Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.',
        imageUrl:
            'https://images.unsplash.com/photo-1504711434969-e33886168f5c?w=600&q=80',
      ),
      ArticleModel(
        title: 'Article Title 2: Local Coffee Shop Opens',
        description:
            'The cozy new cafe, "The Daily Grind", offers local brews and a relaxing atmosphere for customers.',
        imageUrl:
            'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=600&q=80',
      ),
      ArticleModel(
        title: 'Article Title 3: New Tech Gadgets',
        description:
            'Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.',
        imageUrl:
            'https://images.unsplash.com/photo-1518770660439-4636190af475?w=600&q=80',
      ),
    ];

    return MaterialApp(
      title: 'News Feed',
      debugShowCheckedModeBanner: false,
      home: NewsScreen(articles: articles),
    );
  }
}