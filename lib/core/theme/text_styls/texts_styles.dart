import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle titleTextStyle = TextStyle(
    fontSize: 24.sp,
  );

  static TextStyle welcomeTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle bodyTextStyle = TextStyle(
    fontSize: 14.sp,
  );

  static TextStyle bodyGreyTextStyle = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey,
  );

  static TextStyle buttonTextStyle = TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
  );

  static TextStyle onboardingTitleStyle = TextStyle(
    fontSize: 24.sp,
  );

  static TextStyle onboardingBodyStyle = TextStyle(
    fontSize: 16.sp,
  );

  static TextStyle onboardingFooterStyle = TextStyle(
    fontSize: 14.sp,
  );

  static TextStyle onboardingLinkStyle = TextStyle(
    fontSize: 14.sp,
    color: Colors.blue,
  );

  static TextStyle headlineSmall(BuildContext context) => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w300,
      );
}
