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
        height: 59,
        width: double.infinity,
        color: const Color(0xffE9EEFA),
      ),
      Container(
        height: 68,
        color: const Color(0xffE9EEFA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Text(
                'Search Results',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ])),
          Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
     child: ListView.builder(itemBuilder: (context, index) =>Customnewscard(title: 'fkdfnfgklf', author: 'ndsmdf', imageUrl: 'https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp', date: DateTime.now(),
     )),
   )
    ],
   )
   
    );
  }
}