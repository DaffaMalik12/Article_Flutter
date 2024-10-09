// lib/screens/article_detail_screen.dart

import 'package:flutter/material.dart';
import '../data/models/article_model.dart';

class ArticleDetailScreen extends StatelessWidget {
  final Article article;

  const ArticleDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (article.urlToImage.isNotEmpty)
                Image.network(
                  article.urlToImage,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              SizedBox(height: 16),
              Text(
                article.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Published at: ${article.publishedAt.toLocal().toString().substring(0, 16)}',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16),
              Text(
                article.description,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              if (article.content.isNotEmpty)
                Text(
                  article.content,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Buka artikel di browser menggunakan URL
                  _launchURL(context, article.url);
                },
                child: Text('Baca Selengkapnya'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(BuildContext context, String url) {
    // Implementasi untuk membuka URL di browser
    // Menggunakan `url_launcher` package
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Membuka browser untuk melihat artikel'),
    ));
  }
}
