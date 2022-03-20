import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Sizes {
  static final screenWidth = Get.width;
  static final screenHeight = Get.height;

//height
  static final heightLandingPageButton = 50.h;
  static final heightDotsSmoothPage = 10.h;
  static final Map<String, double> heightSizeBoxes = {
    'boxS1': screenHeight * 0.1,
    'boxS2': screenHeight * 0.03,
    'boxS3': screenHeight * 0.05,
    'boxS4':15.h,
    'boxS5':5.h,
    'boxS6':60.h,
  };

//width
  static final widthDotsSmoothPage = 10.w;
  static final widthSizeBox = 5.w;

//font Size
  static final Map<String, double> fontSizes = {
    "h1": 50.sp,
    "h2": 40.sp,
    "h3": 30.sp,
    "h4": 28.sp,
    "h5": 25.0.sp,
    'h6': 20.0.sp,
    'h7': 18.0.sp,
    "h8": 16.0.sp,
    "h9": 15.0.sp,
    "h10": 14.0.sp,
    "h11": 13.0.sp,
    "h12":8.0.sp,
  };

  // Icons sizes
  static final iconsSizes = {
    "s1": 95.h,
    "s2": 70.h,
    "s3": 48.h,
    "s4": 32.h,
    "s5": 24.h,
    "s6": 12.h,
    "s7": 19.h,
  };

//icons size
  static final Map<String, double> iconsSize = {
    'iconS1': 35.h,
    'iconS2': 30.h,
    'iconS3': 28.h,
    'iconS4': 25.h,
  };

//padding and margin and space
  static final paddingHorizontally = {
    "p1":20.w,
    "p2":15.w,
    "p3":10.w,
    'p4':8.w,
    'p5':5.w,
  };
  static final paddingVertically = 6.w;
  static final landingPageBorderMargin = 80.h;
  static final lowMargin =10.w;
  static final marginMedium =22.h;



//radius
  static final landingPhotoRadius = 140.r;
  static final Map<String, double> buttonRadius = {
    "r1": 30.r,
    "r2": 25.r,
    "r3": 15.r,
  };
}

scaleHeight(context) {
  return MediaQuery.of(context).size.height;
}

scaleWidth(context) {
  return MediaQuery.of(context).size.width;
}

customHeight(context, double percent) {
  return scaleHeight(context) * percent;
}

customWidth(context, double percent) {
  return scaleWidth(context) * percent;
}
