import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../config/app_theme.dart';

class AppUtils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 14.sp);
  }
  // //========================================================================================================================//

// NewOrder regular 100
  static TextStyle textblackRobotoRegular10 = TextStyle(
      fontFamily: "Roboto",
      color: AppTheme.black,
      fontWeight: FontWeight.w400,
      fontSize: 10.sp);

  static TextStyle textborderRobotoRegular12 = TextStyle(
      fontFamily: "Roboto",
      color: AppTheme.border,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp);



  static TextStyle textblackRobotoRegular12 = TextStyle(
      fontFamily: "Roboto",
      color: AppTheme.black,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp);



  static TextStyle textblackRobotoBold14 = TextStyle(
      fontFamily: "Roboto",
      color: AppTheme.black,
      fontWeight: FontWeight.w700,
      fontSize: 14.sp);



  static goBack() {
    Get.back();
  }


  static height() {
    return Get.height;
  }


  static width() {
    return Get.width;
  }
}
