import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class MyCustomTextFormField extends StatelessWidget {
  const MyCustomTextFormField({super.key, required this.hint, this.suffixIcon});
  final String hint;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
