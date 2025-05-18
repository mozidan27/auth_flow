import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInFormField extends StatelessWidget {
  const SignInFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyCustomTextFormField(hint: "Example@gmail.com", obscureText: false),
          verticalSpace(26),
          MyCustomTextFormField(
            obscureText: false,
            hint: "Password",
            suffixIcon: SvgPicture.asset(
              Assets.imagesEyeoff,
              height: 15,
              width: 17,
              fit: BoxFit.scaleDown,
            ),
          ),

          verticalSpace(24),
          MyCustomButtom(text: AppStrings.logIn),
        ],
      ),
    );
  }
}
