# Article App Flutter

Article App adalah aplikasi mobile yang dibuat menggunakan **Flutter** untuk menampilkan berita terkini dari berbagai sumber melalui **NewsAPI**. Aplikasi ini menampilkan berita berdasarkan kategori tertentu seperti teknologi, bisnis, kesehatan, dan lainnya. Pengguna juga dapat mencari artikel berdasarkan kata kunci.

## Fitur

- **Berita Terbaru**: Menampilkan berita terbaru dari berbagai sumber.
- **Kategori Berita**: Pengguna dapat memilih kategori berita seperti Teknologi, Bisnis, Olahraga, dan Kesehatan.
- **Detail Berita**: Menampilkan detail lengkap dari setiap artikel, termasuk sumber berita, tanggal publikasi, dan deskripsi singkat.
- **Pencarian Artikel**: Fitur untuk mencari artikel berdasarkan kata kunci.
- **Responsive Design**: Tampilan yang menyesuaikan dengan ukuran layar perangkat.

## Tech Stack

- **Flutter**: Framework UI untuk pengembangan aplikasi mobile multiplatform.
- **Dart**: Bahasa pemrograman yang digunakan dalam Flutter.
- **http**: Paket Flutter untuk melakukan HTTP request ke API.
- **Provider**: Untuk state management dalam aplikasi Flutter.
- **NewsAPI**: Digunakan untuk mengambil data berita.

## API

Aplikasi ini menggunakan API dari [NewsAPI](https://newsapi.org/). Anda harus mendaftar dan mendapatkan **API Key** untuk menggunakan layanan ini.

1. **Endpoint Berita Terbaru**: `/v2/top-headlines`
2. **Endpoint Pencarian Artikel**: `/v2/everything`
3. **Kategori Berita**: Artikel dapat diambil berdasarkan kategori seperti `business`, `technology`, `health`, dll.

### Contoh Request API

- Mendapatkan berita teknologi terbaru:
GET https://newsapi.org/v2/top-headlines?category=technology&apiKey=your_api_key
