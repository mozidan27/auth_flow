import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndServiceText extends StatelessWidget {
  const TermsAndServiceText({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        softWrap: true,
        overflow: TextOverflow.clip,
        text: TextSpan(
          children: [
            TextSpan(
              text: "I agree to platform ",
              style: CustomTextStyles.noto14WhiteMedium.copyWith(
                color: AppColor.grey,
                fontWeight: FontWeight.w100,
              ),
            ),
            TextSpan(
              text: "Terms of service ",
              style: CustomTextStyles.noto14BlueRegular600.copyWith(
                fontWeight: FontWeight.w900,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: "and ",
              style: CustomTextStyles.noto14BlueRegular600.copyWith(
                color: AppColor.grey,
                fontWeight: FontWeight.w100,
              ),
            ),
            TextSpan(
              text: "Privacy Policy",
              style: CustomTextStyles.noto14BlueRegular600.copyWith(
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
