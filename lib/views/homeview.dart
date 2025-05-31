
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:worldnews_app/widgets/customcategorybutton.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  List<String> categories = [
    'Technology',
    'Sports',
    'Health',
    'Entertainment',
    'Business',
    'Science',
    'World',
  ];
  String formattedDate = DateFormat("MMMM d . y").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
         
          
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height:50.h,
            child: ListView.builder(itemBuilder: (context, index) =>Customcategorybutton(Category:categories[index] ) , itemCount: categories.length, shrinkWrap: true, physics: BouncingScrollPhysics())),
            Column(
              children: [
                Image.asset(
                  'assets/mages/irtualimage.png',
                  width: double.infinity,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Welcome to World News',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                ListView.builder(
                  itemCount: 10, // Replace with your news items count
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.purpleAccent, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'News Title $index',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Author Name · $formattedDate',
                                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://via.placeholder.com/80x60', // Replace with your image URL
                                width: 80,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            )
        ],
      ),
    );
  }
}