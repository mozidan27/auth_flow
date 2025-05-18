import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class MyCustomTextFormField extends StatelessWidget {
  const MyCustomTextFormField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.onChanged,
    this.onFieldSubmittedl,
    this.controller,
    this.validator,
    required this.obscureText,
  });
  final String hint;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmittedl;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmittedl,
      style: CustomTextStyles.noto14WhiteMedium.copyWith(
        color: AppColor.darkGrey,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.only(left: 14),
        hintText: hint,
        hintStyle: CustomTextStyles.noto14WhiteMedium.copyWith(
          color: AppColor.lightGrey,
        ),
        hintFadeDuration: Duration(days: 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColor.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.blue),
          borderRadius: BorderRadius.circular(14),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGrey),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
