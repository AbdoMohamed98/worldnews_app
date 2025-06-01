import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart'; // For dynamic date formatting

class Customnewscard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final DateTime date;

  const Customnewscard({
    super.key,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat("MMMM d, y").format(date);

    return Container(
      height: 100.h,
      width: double.infinity,
     
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [ 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "$author · $formattedDate",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            
      Container(
          width: 80.w,
          height: 100.h,
              child: CachedNetworkImage(imageUrl: imageUrl,
              )
      )
          ],
        ),
      ),
    );
  }
}
