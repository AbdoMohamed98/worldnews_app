class Newsabouteverything {
  final String title;
  final String description;
  final String urltoimage;
  final String author;
  final dynamic date;
Newsabouteverything({required this.author, 
    required this.title,
    required this.description,
    required this.urltoimage,
    required this.date,
  });
  factory Newsabouteverything.fromJson(Map<String, dynamic> json) {
    return Newsabouteverything(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      urltoimage: json['urlToImage'] ?? '',
      author: json['author'] ?? 'Unknown',
      date: json['publishedAt'] ?? '',
    );
  }
}