import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For dynamic date formatting

class NewsCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final DateTime date;

  const NewsCard({
    super.key,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat("MMMM d, y").format(date); // e.g. May 3, 2023

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.purpleAccent, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Left content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "$author · $formattedDate",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            // Right image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 80,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
