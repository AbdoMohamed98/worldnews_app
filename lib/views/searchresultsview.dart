import 'package:flutter/material.dart';
import 'package:worldnews_app/widgets/customnewscard.dart';

class Searchresultsview extends StatelessWidget {
  const Searchresultsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
   body:Column(
    children: [
      Container(
        height: 40,
        width: double.infinity,
  
      ),
      Container(
        height: 68,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Search Results',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            
          ])),
          Expanded(
            child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                 child: ListView.builder(itemBuilder: (context, index) =>Customnewscard(title: 'fkdfnfgklf', author: 'ndsmdf', imageUrl: 'https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp', date: DateTime.now(),
                 )),
               ),
          )
    ],
   )
   
    );
  }
}