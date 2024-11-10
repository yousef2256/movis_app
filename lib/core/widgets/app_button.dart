import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/spaser.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final double? iconSize;
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    this.textColor,
    this.icon,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
        decoration: BoxDecoration(
            color: color ?? Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(5.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: iconSize ?? 15.w,
                color: textColor,
              ),
            horizontalSpace(2.w),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: textColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
