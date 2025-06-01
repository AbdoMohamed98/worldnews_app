import 'package:flutter/material.dart';
import 'package:worldnews_app/widgets/customnewscard.dart';

class Searchresultsview extends StatelessWidget {
  const Searchresultsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
        centerTitle: true,
      ),
   body:ListView.builder(itemBuilder: (context, index) =>Customnewscard(title: 'fkdfnfgklf', author: 'ndsmdf', imageUrl: 'https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp', date: DateTime.now(),
   ))
   
    );
  }
}