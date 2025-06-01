
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key,this.customtextfieldcursorcolor, this.customtextfieldhinttext, this.customtextfieldhintcolor, this.textfieldborderradius,  this.textfieldbordercolor, this.textfieldfillcolor, this.suffixIcon});
       final Color? customtextfieldcursorcolor;
       final String? customtextfieldhinttext;
        final Color?  customtextfieldhintcolor;
        final double? textfieldborderradius;
        final Color? textfieldbordercolor;
        final Color? textfieldfillcolor;
        final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
          autofocus: false,
          cursorColor:customtextfieldcursorcolor,
          decoration:InputDecoration(
            suffixIcon:suffixIcon ,
            fillColor: textfieldfillcolor ?? Color(0xffE8ECF4), // NEW
        filled: true,
            hintText:customtextfieldhinttext ,
            hintStyle: TextStyle(color: customtextfieldhintcolor  ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color:textfieldbordercolor ?? Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor ?? Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(textfieldborderradius ?? 8.r))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textfieldbordercolor ?? Colors.transparent ),
              borderRadius: BorderRadius.all(Radius.circular(textfieldborderradius ?? 8.r))
            )
          ) ,
          obscureText:false ,
    );
  }
}