
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:worldnews_app/core/appstyle/colors.dart';
import 'package:worldnews_app/core/appstyle/fonts.dart';

class Apptextstyle {
  static TextStyle headlines = TextStyle(
    fontFamily: Appfonts.appmainfont,
    color: Appcolors.appprimarycolor,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
  );
   static TextStyle subtitles = TextStyle(
    fontFamily: Appfonts.appmainfont,
    color: Appcolors.appsecondarycolor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle hinttext = TextStyle(
    fontFamily: Appfonts.appmainfont,
    color: Appcolors.lightbluecolor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );
}
