
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:worldnews_app/helper/api.dart';
import 'package:worldnews_app/models/newsabouteverything.dart';
import 'package:worldnews_app/widgets/customcategorybutton.dart';
import 'package:worldnews_app/widgets/customnewscard.dart';
import 'package:worldnews_app/widgets/customtextfield.dart';

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
  bool showSearchField = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Column(
        children: [
          Container(
            height: 59.h,
            width: double.infinity,
            color: Color(0xffE9EEFA),
          ),
          Container(
            height: 68.h,
            color: Color(0xffE9EEFA),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
            
                Padding(
                  padding:  EdgeInsets.only(left: 32.h),
                  child: Text('Explore',style:TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight. w600,
                
                  )  ,),
                ),
                showSearchField ?
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: SizedBox(
                    width: 200.w,
                    height: 52.h,
                    child: Customtextfield(hintText: 'Search', onChanged:(value){} ,
                     textfieldbordercolor: Colors.grey, // ✅ this makes the border visible
                      textfieldborderradius: 12.r,       // optional: for rounded corners
                      customtextfieldhintcolor: Colors.grey,
                    )),
                ):SizedBox.shrink(),
               IconButton(
  onPressed: () {
  setState(() {
    showSearchField= !showSearchField;
  });
  },
  icon: Icon(Icons.search),
),

              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 32.h),
            child: SizedBox(
              height:50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Customcategorybutton(
                    Category: categories[index],
                    onPressed: () {
                   
                    },
                  );
                },
              ),),
          ),
              
            Padding(
              padding: EdgeInsets.only( top: 16.h,bottom: 16.h, left: 16.h, right: 16.h),
              child: SizedBox(
              height: 292.h,
              width: 366.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/virtualimage.png',
                      width: double.infinity,
                      height: 206.h,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      
                      padding: const EdgeInsets.only( top: 8.0),
                      child: Text(
                        'Welcome to World News',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                                      
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 6.h, bottom: 2.h),
                      child: Text(
                        formattedDate,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                   
                    
                  ],
                ),
              ),
              
            ),
                   Expanded(
  child: FutureBuilder(
    future: GetNews().getWorldNews(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return const Center(child: Text('Error loading news'));
      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return const Center(child: Text('No news found.'));
      }

      final newsList = snapshot.data!;
      return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h),
        child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            final news = newsList[index];
            return GestureDetector(
              onTap: () {
                context.pushNamed('/Articleview', queryParameters: {
                  'title': news.title,
                  'author': news.author,
                  'imageUrl': news.urltoimage,
                  'date': news.date ?? DateTime.now(),
                  'decription': news.description ,
                 
                });
              },
              child: Customnewscard(
                title: news.title,
                author: news.author ,
                imageUrl: news.urltoimage,
                date: news.date != null
                    ? DateTime.parse(news.date)
                    : DateTime.now(),
              ),
            );
          },
        ),
      );
    },
  ),
),

            
        
    ]));
  
  }
}