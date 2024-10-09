// lib/data/models/article_model.dart

class Article {
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  // Factory constructor untuk membuat objek Article dari JSON
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] ?? 'Unknown',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ??
          'https://via.placeholder.com/150', // Placeholder image
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'] ?? '',
    );
  }
}

class Source {
  final String id;
  final String name;

  Source({
    required this.id,
    required this.name,
  });

  // Factory constructor untuk membuat objek Source dari JSON
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'] ?? 'unknown',
      name: json['name'] ?? 'Unknown',
    );
  }
}
