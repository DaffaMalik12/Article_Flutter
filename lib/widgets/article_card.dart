// lib/widgets/article_card.dart

import 'package:flutter/material.dart';
import '../data/models/article_model.dart';
import '../screens/article_detail_screen.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: article.urlToImage != null
            ? Image.network(
          article.urlToImage,
          width: 100,
          fit: BoxFit.cover,
        )
            : null,
        title: Text(article.title),
        subtitle: Text(article.description),
        onTap: () {
          // Navigasi ke layar detail artikel
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleDetailScreen(article: article),
            ),
          );
        },
      ),
    );
  }
}
