import 'package:flutter/material.dart';

class Customcategorybutton extends StatelessWidget {
  const Customcategorybutton({super.key, this.onPressed, required this.Category});
  final void Function()? onPressed;
  final String Category;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onPressed, child:Text(
      Category,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ) );
  }
}