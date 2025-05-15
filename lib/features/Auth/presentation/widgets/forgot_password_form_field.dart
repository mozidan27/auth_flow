import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordFormField extends StatelessWidget {
  const ForgotPasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          verticalSpace(24),
          Text(
            AppStrings.forgot,
            style: CustomTextStyles.catamaran26DarkGreybold,
          ),
          verticalSpace(10),
          Text(
            textAlign: TextAlign.center,
            AppStrings.dontworry,
            style: CustomTextStyles.noto14WhiteMedium.copyWith(
              color: AppColor.grey,
            ),
          ),
          verticalSpace(32),
          MyCustomTextFormField(hint: "Insert email address"),
          verticalSpace(124),
          MyCustomButtom(text: AppStrings.submit, onTap: () {}),
        ],
      ),
    );
  }
}
