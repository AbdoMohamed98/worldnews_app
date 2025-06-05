
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:worldnews_app/widgets/customcategorybutton.dart';
import 'package:worldnews_app/widgets/customnewscard.dart';

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
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
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
              padding: EdgeInsets.only( top: 16.h,bottom: 16.h),
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
                    SingleChildScrollView(child: Customnewscard(title: 'fghlfegdfgewdgfejlfgedlfgdjljfgdjgfejdhgfjlehgfelfgelgflddsgfgtg', author: 'g4r4tt4', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZPjasn-8EECz9w5rcUPPbKc1Zm77HFjqHlg&s', date: DateTime.now())),

            
        
    ]));
  
  }
}