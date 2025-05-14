import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class MyCustomButtom extends StatelessWidget {
  const MyCustomButtom({
    super.key,
    required this.text,
    this.onTap,
    this.colors,
  });
  final String text;
  final void Function()? onTap;
  final Color? colors;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: colors ?? AppColor.blue,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            text,
            style: CustomTextStyles.noto14WhiteMedium.copyWith(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
