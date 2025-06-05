import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Articaleview extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final DateTime date;
  final String description; // ✅ Added description field

  const Articaleview({
    super.key,
    required this.title,       // ❌ FIX: previously constructor params were unused
    required this.author,
    required this.imageUrl,
    required this.date,
     required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ✅ Background image with proper fit and error handling
          SizedBox(
            height: 300,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
            ),
          ),

          // ✅ Article content container
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$author · ${DateFormat("MMMM d, y").format(date)}',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  const SizedBox(height: 16),
                   Text(
                    description
                   ,
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                ],
              ),
            ),
          ),

          // ✅ Back button in safe area
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: BackButton(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
