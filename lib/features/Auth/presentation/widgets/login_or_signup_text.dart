import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogInOrSignUpText extends StatelessWidget {
  const LogInOrSignUpText({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: CustomTextStyles.noto14WhiteMedium.copyWith(
              color: AppColor.abitDarkGrey,
            ),
          ),
          TextSpan(
            text: text2,
            style: CustomTextStyles.noto14BlueRegular600.copyWith(
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
