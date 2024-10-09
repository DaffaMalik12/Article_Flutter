import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article_model.dart';

class NewsRepository {
  final String apiKey = 'd6732069282a43ab87f70251cd982327'; // Ganti dengan API key Anda dari NewsAPI
  final String baseUrl = 'https://newsapi.org/v2/top-headlines?country=us';

  Future<List<Article>> fetchNews() async {
    try {
      // Membuat request dengan menambahkan API key ke dalam URL
      final response = await http.get(Uri.parse('$baseUrl&apiKey=$apiKey'));

      // Debugging: cetak status code dan body respons
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      // Jika respons berhasil (status code 200)
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> articlesJson = data['articles'];

        if (articlesJson.isEmpty) {
          print('No articles found');
        } else {
          print('Articles found: ${articlesJson.length}');
        }

        // Konversi JSON ke objek Artikel
        return articlesJson.map((json) => Article.fromJson(json)).toList();
      } else {
        // Jika respons gagal, cetak pesan error
        print('Failed to load news: ${response.statusCode}');
        throw Exception('Failed to load news');
      }
    } catch (e) {
      // Cetak error yang terjadi
      print('Error: $e');
      throw Exception('Failed to load news');
    }
  }
}
