import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customcategorybutton extends StatefulWidget {
  const Customcategorybutton({super.key, this.onPressed, required this.Category});
  final void Function()? onPressed;
  final String Category;

  @override
  State<Customcategorybutton> createState() => _CustomcategorybuttonState();
}

class _CustomcategorybuttonState extends State<Customcategorybutton> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only( right: 24.w, bottom: 6.h, top: 6.h),
      child: OutlinedButton(onPressed: widget.onPressed, child:Text(
        widget.Category,
        style: 
         
        TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ) ),
    );
  }
}