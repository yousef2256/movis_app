import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/theme/text_styls/texts_styles.dart';

class CustomeTextFeald extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextStyle? textButtonStyle;
  final void Function()? suffixOnPressed;
  final String? textButton;
  const CustomeTextFeald({
    super.key,
    required this.hintText,
    this.controller,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.textButtonStyle,
    this.suffixOnPressed,
    this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: TextButton(
          onPressed: suffixOnPressed ?? () {},
          child: Text(
            textButton ?? '',
            style: textButtonStyle ?? TextStyles.bodyGreyTextStyle,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyles.bodyGreyTextStyle,
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 18.w),
        fillColor: Theme.of(context).colorScheme.secondary,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
