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
      height: 85.h,
      width: 366.w,
     
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [ 
            SizedBox(
              width: 238.w,
              height: 70.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 238.w,
                    height: 48.h,
                    
                    child: Text(

                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                    ),
                  ),
                  
                  SizedBox(
                    width: 134.w,
                    height: 18.h,
                    child: Text(
                      "$author · $formattedDate",
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            
            
      SizedBox(
          width: 105.w,
          height: 80.h,
              child: CachedNetworkImage(imageUrl: imageUrl,
              )
      )
          ],
        ),
      ),
    );
  }
}
