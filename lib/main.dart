// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/article_detail_screen.dart'; // Pastikan path ini benar
import 'screens/home_screen.dart'; // Pastikan path ini benar
import 'data/models/article_model.dart'; // Pastikan path ini benar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/articleDetail') {
          final Article article = settings.arguments as Article;
          return MaterialPageRoute(
            builder: (context) => ArticleDetailScreen(article: article),
          );
        }
        return null;
      },
    );
  }
}
