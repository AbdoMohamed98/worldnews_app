import 'package:flutter/material.dart';
import 'package:worldnews_app/widgets/customtextfield.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Row(
      children: [
        Customtextfield()
      ],
     ),
    );
  }
}